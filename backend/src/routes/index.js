const router = require("express").Router();
const rolesRouter = require("./roles.routes");
const userRouter = require("./users.routes");
const photographyRouter = require("./photographies.routes");
const typeRouter = require("./types.routes");

router.use("/roles", rolesRouter);
router.use("/users", userRouter);
router.use("/photographies", photographyRouter);
router.use("/types", typeRouter);

module.exports = router;
