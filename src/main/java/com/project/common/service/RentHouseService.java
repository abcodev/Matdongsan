package com.project.common.service;

import com.project.common.dto.RentHouseDto;
import org.springframework.stereotype.Service;
import org.xml.sax.SAXException;

import javax.xml.parsers.ParserConfigurationException;
import java.io.IOException;
import java.util.List;

@Service
public interface RentHouseService {
   int getAndSave();
}
