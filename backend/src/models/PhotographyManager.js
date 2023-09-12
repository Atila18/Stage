const AbstractManager = require("./AbstractManager");

class PhotographyManager extends AbstractManager {
  constructor() {
    super({ table: "photography" });
  }

  insert(photography) {
    return this.database.query(
      `INSERT INTO ${this.table} (name, tag, type_id) VALUES (?, ?, ?)`,
      [photography.name, photography.tag, photography.type_id]
    );
  }

  update(photography) {
    return this.database.query(`UPDATE ${this.table} SET name = ?`, [
      photography.name,
    ]);
  }

  findAll() {
    return this.database.query(
      `SELECT p.id, p.name AS photo_name, p.tag, t.title FROM ${this.table} AS p JOIN type AS t ON t.id = p.type_id ORDER BY id`
    );
  }
}

module.exports = PhotographyManager;
