import 'package:flutter/material.dart';
import 'package:socialmedia/components/interactions/comment.dart';
import 'package:socialmedia/components/interactions/like.dart';
import 'package:socialmedia/components/interactions/share.dart';

class Interactions extends StatelessWidget {
  final int likeCount;
  final int commentCount;
  final int shareCount;

  final VoidCallback onLike;
  final VoidCallback onComment;
  final VoidCallback onShare;

  const Interactions({
    super.key,
    required this.onLike,
    required this.onComment,
    required this.onShare,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Like(
          onLike: onLike,
          likeCount: likeCount,
        ),
        Comment(
          onComment: onComment,
          commentCount: commentCount,
        ),
        Share(
          onShare: onShare,
          shareCount: shareCount,
        ),
      ],
    );
  }
}
