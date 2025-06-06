package org.scoula.travel.dataimport;

import org.scoula.database.JDBCUtil;
import org.scoula.travel.dao.TravelDao;
import org.scoula.travel.dao.TravelDaoImpl;
import org.scoula.travel.domain.TravelImageVo;

import java.io.File;

public class ImportImageData {
    public static void main(String[] args) {
        TravelDao dao = new TravelDaoImpl();

        File dir = new File("../travel-image");
        File[] files = dir.listFiles();
        if (files == null) throw new IllegalStateException("파일 목록이 null입니다!");
        for (File file : files) {
            String filename = file.getName();
            long travelNo = Long.parseLong(filename.split("-")[0]);

            TravelImageVo image = TravelImageVo.builder()
                    .filename(filename)
                    .travelNo(travelNo)
                    .build();

            dao.insertImage(image);
        }

        JDBCUtil.close();
    }
}
