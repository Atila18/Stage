const router = require("express").Router();

const typeControllers = require("../controllers/typeControllers");

router.get("/", typeControllers.browse);
router.get("/:id", typeControllers.read);
router.put("/:id", typeControllers.edit);
router.post("/", typeControllers.add);
router.delete("/:id", typeControllers.destroy);

module.exports = router;
