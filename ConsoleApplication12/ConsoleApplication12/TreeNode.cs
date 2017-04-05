using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication12
{
    delegate void TreeVisitor<T>(T nodeData);
    class TreeNode<T>
    {
        private int playerNumber;
        public T data;
        private LinkedList<TreeNode<T>> children;
        private int count;
        private int height;

        public TreeNode(T data)
        {
            this.data = data;
            children = new LinkedList<TreeNode<T>>();
            height = 0;
        }

        public void AddChild(T data)
        {
            children.AddFirst(new TreeNode<T>(data));
            height += 1;
        }

        public TreeNode<T> GetChild(int i)
        {
            foreach (TreeNode<T> n in children)
                if (--i == 0)
                    return n;
            return null;
        }

        public int ChildCount(TreeNode<T> node)
        {
            
            return 0;
        }
        public void Traverse(TreeNode<T> node, TreeVisitor<T> visitor)
        {
            visitor(node.data);
            foreach (TreeNode<T> kid in node.children)
                Traverse(kid, visitor);
        }
    }
}
