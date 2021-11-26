package com.test.tools.javac;

import com.test.tools.javac.code.Types;
import com.test.tools.javac.main.JavaCompiler;
import com.test.tools.javac.parser.JavacParser;
import com.test.tools.javac.parser.ParserFactory;
import com.test.tools.javac.tree.JCTree;
import com.test.tools.javac.util.Context;

import java.io.*;

public class Jparser {
    public static void main(String[] args) {
        Context context = new Context();
        JavaCompiler jc = new JavaCompiler(context);
        ParserFactory instance = ParserFactory.instance(context);
        try {
            JavacParser j = instance.newParser(readFileByByte(args[0]), false, false, false);
            JCTree.JCCompilationUnit unit = j.parseCompilationUnit();
            unit.getImports();
            //Types.MapVisitor

        } catch (Exception e) {

        }
    }
    public static String readFileByByte(String filePath) throws Exception{
        StringBuffer buffer = new StringBuffer();
        BufferedReader bf= new BufferedReader(new FileReader(filePath));
        String s = null;
        while((s = bf.readLine())!=null){//使用readLine方法，一次读一行
            buffer.append(s.trim());
        }

        return buffer.toString();
    }

}
