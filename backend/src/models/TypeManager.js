const AbstractManager = require("./AbstractManager");

class TypeManager extends AbstractManager {
  constructor() {
    super({ table: "type" });
  }

  insert(type) {
    return this.database.query(`INSERT INTO ${this.table} (title) VALUES (?)`, [
      type.title,
    ]);
  }

  update(type) {
    return this.database.query(`UPDATE ${this.table} SET title = ?`, [
      type.title,
    ]);
  }

  findAll() {
    return this.database.query(`SELECT * FROM ${this.table}`);
  }
}

module.exports = TypeManager;
