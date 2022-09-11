"Hello, World\n";

class Node {
  I32 value;
  Node *left;
  Node *right;
};

Node *create_node(I32 value) {
  Node *node = MAlloc(sizeof(Node));
  node->value = value;
  node->left = NULL;
  node->right = NULL;
  return node;
}

Node *build_tree(I32 depth) {
  Node *root = create_node(god%20);
  if(depth>0) {
    root->left = build_tree(depth-1);
    root->right = build_tree(depth-1);
  }
  return root;
}

I0 print_tree(Node *root, I32 depth =0) {
  I32 i;
  for(i=0;i<depth;i++) "  ";
  "%d\n", root->value;
  if(root->left!=NULL) print_tree(root->left, depth+1);
  if(root->right!=NULL) print_tree(root->right, depth+1);
}

Node *node =build_tree(3);
print_tree(node);
