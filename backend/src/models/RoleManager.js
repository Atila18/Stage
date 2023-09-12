const AbstractManager = require("./AbstractManager");

class RoleManager extends AbstractManager {
  constructor() {
    super({ table: "role" });
  }

  insert(role) {
    return this.database.query(`INSERT INTO ${this.table} (name) VALUES (?)`, [
      role.name,
    ]);
  }

  update(role) {
    return this.database.query(`UPDATE ${this.table} SET name = ?`, [
      role.name,
    ]);
  }

  findAll() {
    return this.database.query(`SELECT r.name FROM ${this.table} AS r`);
  }
}

module.exports = RoleManager;
