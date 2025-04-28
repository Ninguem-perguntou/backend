/**
 *  article controller
 */
import { factories } from '@strapi/strapi';

export default factories.createCoreController('api::article.article', ({ strapi }) => ({

  // FIND -> Listar apenas artigos publicados
  async find(ctx) {
    // Força buscar apenas artigos publicados
    const filters = typeof ctx.query.filters === 'object' ? ctx.query.filters : {};

    // Adiciona o filtro para garantir que 'publishedAt' não seja null
    ctx.query.filters = {
        ...filters,
        publishedAt: { $ne: null },
    };

    const { data, meta } = await super.find(ctx);

    // Atualiza data com segurança
    const updatedData = Array.isArray(data)
      ? data.map((item) => {
          const attributes = item?.attributes || {};
          return {
            ...item,
            attributes: {
              ...attributes,
              views: attributes.views ?? 0, // Se views for null ou undefined, vira 0
            },
          };
        })
      : [];

    return { data: updatedData, meta };
  },

  // FINDONE -> Buscar e somar views só se publicado
  async findOne(ctx) {
    const { id } = ctx.params;

    let populate = {};
    if (ctx.query.populate === '*') {
      populate = true;
    } else if (typeof ctx.query.populate === 'object') {
      populate = ctx.query.populate;
    }

    // Busca o artigo pelo documentId
    const entity = await strapi.db.query('api::article.article').findOne({
      where: { documentId: id, publishedAt: {$ne: null} },
      populate,
    });

    if (!entity) {
      return ctx.notFound();
    }

    // Só incrementa views se o artigo estiver publicado
    if (entity.publishedAt) {
      await strapi.db.query('api::article.article').update({
        where: { id: entity.id },
        data: {
          views: (entity.views || 0) + 1,
        },
      });

      // Busca o artigo atualizado
      const updatedEntity = await strapi.db.query('api::article.article').findOne({
        where: { id: entity.id },
        populate,
      });

      return this.transformResponse(updatedEntity);
    } else {
      // Se não está publicado, apenas retorna o artigo sem alterar
      return this.transformResponse(entity);
    }
  },

}));
