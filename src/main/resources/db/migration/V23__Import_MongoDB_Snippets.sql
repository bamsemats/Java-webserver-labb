-- V23__Import_MongoDB_Snippets.sql

INSERT INTO code_snippet (title, description, content, language, category, is_public, user_id, created_at) VALUES
('MongoDB: Insert One Document', 'Basic collection insertion.', 'db.users.insertOne({
  name: "Alice",
  age: 25,
  tags: ["developer", "java"]
});', 'MongoDB', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Find with Filter', 'Retrieving documents matching criteria.', 'db.users.find({ age: { $gt: 18 }, active: true });', 'MongoDB', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Update with $set', 'Modifying specific fields.', 'db.users.updateOne(
  { _id: ObjectId("...") },
  { $set: { status: "verified" } }
);', 'MongoDB', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Aggregate - Group and Sum', 'Simple aggregation pipeline.', 'db.orders.aggregate([
  { $group: { _id: "$customer", total: { $sum: "$amount" } } }
]);', 'MongoDB', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Array Query - $in', 'Finding documents with matching array values.', 'db.products.find({ tags: { $in: ["tech", "gadget"] } });', 'MongoDB', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Array Update - $push', 'Adding items to an array field.', 'db.posts.updateOne(
  { _id: 1 },
  { $push: { comments: { user: "mats", text: "Nice!" } } }
);', 'MongoDB', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Delete Multiple', 'Removing documents based on filter.', 'db.logs.deleteMany({ status: "expired" });', 'MongoDB', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Create Index', 'Improving query performance.', 'db.users.createIndex({ email: 1 }, { unique: true });', 'MongoDB', 'Performance', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Projection', 'Limiting returned fields.', 'db.users.find({}, { name: 1, email: 1, _id: 0 });', 'MongoDB', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Text Search', 'Using text indexes for search.', 'db.articles.find({ $text: { $search: "database" } });', 'MongoDB', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Lookup (Join)', 'Joining collections in aggregate.', 'db.orders.aggregate([
  { $lookup: {
      from: "products",
      localField: "p_id",
      foreignField: "_id",
      as: "details"
  }}
]);', 'MongoDB', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Sort and Limit', 'Ordering and paginating results.', 'db.users.find().sort({ created: -1 }).limit(10);', 'MongoDB', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: $match and $project', 'Filtering and reshaping data.', 'db.users.aggregate([
  { $match: { active: true } },
  { $project: { fullName: { $concat: ["$first", " ", "$last"] } } }
]);', 'MongoDB', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Increment Value ($inc)', 'Atomic numeric updates.', 'db.counters.updateOne({ _id: "hits" }, { $inc: { count: 1 } });', 'MongoDB', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: TTL Index', 'Auto-expiring documents.', 'db.sessions.createIndex({ "createdAt": 1 }, { expireAfterSeconds: 3600 });', 'MongoDB', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Find One and Update', 'Atomic read-and-modify.', 'db.users.findOneAndUpdate(
  { email: "a@b.com" },
  { $set: { lastLogin: new Date() } },
  { returnDocument: "after" }
);', 'MongoDB', 'Core', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: $unwind Array', 'Deconstructing arrays for analysis.', 'db.inventory.aggregate([{ $unwind: "$sizes" }]);', 'MongoDB', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: GeoSpatial Query', 'Finding documents near coordinates.', 'db.places.find({
  location: { $near: { $geometry: { type: "Point", coordinates: [0, 0] }, $maxDistance: 1000 } }
});', 'MongoDB', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Change Streams', 'Watching for real-time changes.', 'const cursor = db.collection("users").watch();
cursor.on("change", (change) => console.log(change));', 'MongoDB', 'Advanced', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP),

('MongoDB: Count Documents', 'Quickly counting items.', 'db.users.countDocuments({ role: "admin" });', 'MongoDB', 'Basics', TRUE, (SELECT id FROM users WHERE username = 'admin'), CURRENT_TIMESTAMP);
