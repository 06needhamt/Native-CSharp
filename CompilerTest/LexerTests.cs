using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using Native.CSharp.Compiler;

namespace Native.CSharp.Compiler.Tests
{
    [TestClass()]
    public class LexerTests
    {
        [TestMethod()]
        public void isIntegerTest()
        {
            var lines = new String[] { "public int i = 0;" };
            Lexer L = new Lexer(ref lines, new System.IO.StreamWriter("test.txt"));
            Assert.IsTrue(L.isInteger("1"), "Should return true as value is integer");
            Assert.IsFalse(L.isInteger("A"), "Should return false as value is not an integer");
        }

        [TestMethod()]
        public void LexerTest()
        {
            var lines = new String[] { "public int i = 0;" };
            Lexer L = new Lexer(ref lines, new System.IO.StreamWriter("test.txt"));
            Assert.IsTrue(L != null, "The lexer object should not be null");
        }

        [TestMethod()]
        public void CheckBracketsTest()
        {
            var lines = new String[] { "public int i = (1 + 1);" };
            Lexer L = new Lexer(ref lines, new System.IO.StreamWriter("test.txt"));
            Assert.IsTrue(L.CheckBrackets() == 0, "Brackets match so return value should be zero");
            lines[0] = "public int i = (1 + 1";
            Assert.IsTrue(L.CheckBrackets() == 1, "brackets are not matched so return value should be one");
            lines[0] = "public int i = [1 + 1";
            Assert.IsTrue(L.CheckBrackets() == 2, "square brackets are not matched so return value should be two");
            lines[0] = "public int i = {1 + 1";
            Assert.IsTrue(L.CheckBrackets() == 3, "curly brackets are not matched so return value should be three");
        }

    }
}