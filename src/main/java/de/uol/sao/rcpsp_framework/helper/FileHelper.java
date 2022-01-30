package de.uol.sao.rcpsp_framework.helper;

import lombok.SneakyThrows;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

public class FileHelper {

    @SneakyThrows
    public static File getFile(String filepath) {
        File file;
        try {
            // First try the resource dir
            file = new File(FileHelper.class.getClassLoader().getResource(filepath).toURI());
        } catch (Exception invalid) {
            // Otherwise, the actual dir
            String pathStr = System.getProperty("user.dir");
            Path path = Paths.get(pathStr + File.separator + "resources" + File.separator + filepath);
            file = new File(path.toUri());
        }

        return file;
    }
}
