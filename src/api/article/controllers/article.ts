/**
 *  article controller
 */
import { factories } from '@strapi/strapi';

export default factories.createCoreController('api::article.article', ({ strapi }) => ({
  async findOne(ctx) {
    const { id } = ctx.params;

    // Trata o populate para ser um objeto
    let populate = {};
    if (ctx.query.populate === '*') {
      populate = true; // Usa true para pegar tudo
    } else if (typeof ctx.query.populate === 'object') {
      populate = ctx.query.populate;
    }

    // Busca a notícia pelo documentId
    const entity = await strapi.db.query('api::article.article').findOne({
      where: { documentId: id },
      populate,
    });

    if (!entity) {
      return ctx.notFound();
    }

    // Incrementa o campo views
    await strapi.db.query('api::article.article').update({
      where: { id: entity.id },
      data: {
        views: (entity.views || 0) + 1,
      },
    });

    // 🔥 Agora busca de novo, atualizado
    const updatedEntity = await strapi.db.query('api::article.article').findOne({
      where: { id: entity.id },
      populate,
    });

    // Retorna a notícia atualizada
    return this.transformResponse(updatedEntity);
  },
}));
