CREATE TABLE `cart`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL,
    `quantity` BIGINT NOT NULL,
    `price` FLOAT(53) NOT NULL,
    `total_price` FLOAT(53) NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `order_details`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `orders_id` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL,
    `quantity` BIGINT NOT NULL,
    `price` FLOAT(53) NOT NULL,
    `created_at` VARCHAR(255) NOT NULL
);
CREATE TABLE `user`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(255) NOT NULL,
    `fullname` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `role_id` BIGINT NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `feedback`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT NOT NULL,
    `content` TEXT NOT NULL,
    `star` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `category`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `role`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `image`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `url` VARCHAR(255) NOT NULL,
    `user_id` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `payment`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `orders_id` BIGINT NOT NULL,
    `amount` FLOAT(53) NOT NULL,
    `payment_date` DATE NOT NULL,
    `payment_method` VARCHAR(255) NOT NULL
);
CREATE TABLE `product`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `code` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NULL,
    `quantity` BIGINT NOT NULL,
    `price` FLOAT(53) NOT NULL,
    `discount` FLOAT(53) NOT NULL,
    `description` TEXT NOT NULL,
    `category_id` BIGINT NOT NULL,
    `expiry` DATE NOT NULL,
    `year` DATE NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `orders`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `code` VARCHAR(255) NOT NULL,
    `user_id` BIGINT NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `note` TEXT NOT NULL,
    `status` VARCHAR(255) NOT NULL,
    `total_price` FLOAT(53) NOT NULL,
    `created_at` BIGINT NOT NULL
);
ALTER TABLE
    `product` ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY(`category_id`) REFERENCES `category`(`id`);
ALTER TABLE
    `image` ADD CONSTRAINT `image_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `product`(`id`);
ALTER TABLE
`payment` ADD CONSTRAINT `payment_orders_id_foreign` FOREIGN KEY(`orders_id`) REFERENCES `orders`(`id`);
ALTER TABLE
    `user` ADD CONSTRAINT `user_role_id_foreign` FOREIGN KEY(`role_id`) REFERENCES `role`(`id`);
ALTER TABLE
    `order_details` ADD CONSTRAINT `order_details_orders_id_foreign` FOREIGN KEY(`orders_id`) REFERENCES `orders`(`id`);
ALTER TABLE
    `feedback` ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`id`);
ALTER TABLE
    `feedback` ADD CONSTRAINT `feedback_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `product`(`id`);
ALTER TABLE
    `cart` ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`id`);
ALTER TABLE
    `cart` ADD CONSTRAINT `cart_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `product`(`id`);
ALTER TABLE
    `image` ADD CONSTRAINT `image_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`id`);
ALTER TABLE
    `orders` ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`id`);

    

CREATE TABLE `cart`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL,
    `quantity` BIGINT NOT NULL,
    `price` FLOAT(53) NOT NULL,
    `total_price` FLOAT(53) NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `order_details`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `orders_id` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL,
    `quantity` BIGINT NOT NULL,
    `price` FLOAT(53) NOT NULL,
    `created_at` VARCHAR(255) NOT NULL
);
CREATE TABLE `user`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username` VARCHAR(255) NOT NULL,
    `fullname` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(255) NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `role_id` BIGINT NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `feedback`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT NOT NULL,
    `content` TEXT NOT NULL,
    `star` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `category`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `role`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `image`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `url` VARCHAR(255) NOT NULL,
    `user_id` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `payment`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `orders_id` BIGINT NOT NULL,
    `amount` FLOAT(53) NOT NULL,
    `payment_date` DATE NOT NULL,
    `payment_method` VARCHAR(255) NOT NULL
);
CREATE TABLE `product`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `code` VARCHAR(255) NOT NULL,
    `name` VARCHAR(255) NULL,
    `quantity` BIGINT NOT NULL,
    `price` FLOAT(53) NOT NULL,
    `discount` FLOAT(53) NOT NULL,
    `description` TEXT NOT NULL,
    `category_id` BIGINT NOT NULL,
    `expiry` DATE NOT NULL,
    `year` DATE NOT NULL,
    `created_at` DATE NOT NULL
);
CREATE TABLE `orders`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `code` VARCHAR(255) NOT NULL,
    `user_id` BIGINT NOT NULL,
    `address` VARCHAR(255) NOT NULL,
    `note` TEXT NOT NULL,
    `status` VARCHAR(255) NOT NULL,
    `total_price` FLOAT(53) NOT NULL,
    `created_at` BIGINT NOT NULL
);
ALTER TABLE
    `product` ADD CONSTRAINT `product_category_id_foreign` FOREIGN KEY(`category_id`) REFERENCES `category`(`id`);
ALTER TABLE
    `image` ADD CONSTRAINT `image_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `product`(`id`);
ALTER TABLE
`payment` ADD CONSTRAINT `payment_orders_id_foreign` FOREIGN KEY(`orders_id`) REFERENCES `orders`(`id`);
ALTER TABLE
    `user` ADD CONSTRAINT `user_role_id_foreign` FOREIGN KEY(`role_id`) REFERENCES `role`(`id`);
ALTER TABLE
    `order_details` ADD CONSTRAINT `order_details_orders_id_foreign` FOREIGN KEY(`orders_id`) REFERENCES `orders`(`id`);
ALTER TABLE
    `feedback` ADD CONSTRAINT `feedback_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`id`);
ALTER TABLE
    `feedback` ADD CONSTRAINT `feedback_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `product`(`id`);
ALTER TABLE
    `cart` ADD CONSTRAINT `cart_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`id`);
ALTER TABLE
    `cart` ADD CONSTRAINT `cart_product_id_foreign` FOREIGN KEY(`product_id`) REFERENCES `product`(`id`);
ALTER TABLE
    `image` ADD CONSTRAINT `image_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`id`);
ALTER TABLE
    `orders` ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY(`user_id`) REFERENCES `user`(`id`);