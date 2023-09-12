const router = require("express").Router();

const photographyControllers = require("../controllers/photographyControllers");

router.get("/", photographyControllers.browse);
router.get("/:id", photographyControllers.read);
router.put("/:id", photographyControllers.edit);
router.post("/", photographyControllers.add);
router.delete("/:id", photographyControllers.destroy);

module.exports = router;
