import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_ui_design/Agriplant/Utils/colors.dart';
import 'package:flutter_ui_design/Agriplant/models/product.dart';

class ProductDetailsPage extends StatefulWidget {
  final AgroProduct product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  late TapGestureRecognizer gestureRecognizer;
  int count = 1;
  bool showMore = false;
  @override
  void initState() {
    gestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        setState(() {
          showMore = !showMore;
        });
      };
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    gestureRecognizer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        forceMaterialTransparency: true,
        title: const Text(
          "Details",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(IconlyLight.bookmark),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(18),
        children: [
          Hero(
            tag: widget.product.image,
            child: Container(
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.product.image),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            widget.product.name,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Available in stork",
                style: TextStyle(
                  color: mainGreenColor,
                  fontSize: 16,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "\$${widget.product.price}/",
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    TextSpan(
                      text: widget.product.unit,
                      style: const TextStyle(
                        color: Colors.black45,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(
                Icons.star,
                size: 20,
                color: Colors.amber,
              ),
              Text(
                "${widget.product.rating} (${widget.product.reviews})",
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 30,
                width: 30,
                child: IconButton(
                  iconSize: 18,
                  padding: EdgeInsets.zero,
                  style: IconButton.styleFrom(
                    backgroundColor: mainGreenColor,
                  ),
                  onPressed: () {
                    setState(() {
                      if (count > 1) {
                        count--;
                      }
                    });
                  },
                  icon: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  "$count ${widget.product.unit}",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
                width: 30,
                child: IconButton(
                  iconSize: 18,
                  padding: EdgeInsets.zero,
                  style: IconButton.styleFrom(
                    backgroundColor: mainGreenColor,
                  ),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Description",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 5),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Colors.black54,
              ),
              children: [
                TextSpan(
                    text: showMore
                        ? widget.product.description
                        : '${widget.product.description.substring(0, widget.product.description.length - 150)}...'),
                TextSpan(
                  recognizer: gestureRecognizer,
                  text: showMore ? "Read less" : " Read more",
                  style: const TextStyle(color: mainGreenColor),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Related Products",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 90,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 90,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        agroProducts[index].image,
                      ),
                    ),
                    borderRadius: BorderRadius.circular(10)
                  ),
                );
              },
              separatorBuilder: (__, _) => const SizedBox(
                width: 10,
              ),
              itemCount: agroProducts.length,
            ),
          ),
          const SizedBox(height: 20),
          FilledButton(
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.all(15),
              backgroundColor: mainGreenColor,
              shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Add to Cart",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
