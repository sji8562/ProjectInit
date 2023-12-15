package com.tenco.toyproject.service.mng.board;

import com.tenco.toyproject.dto.MngBoardDTO;
import com.tenco.toyproject.repository.entity.Board;
import com.tenco.toyproject.repository.interfaces.mng.board.MngFaqRepository;
import com.tenco.toyproject.vo.PageVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MngFaqService {

    @Autowired
    private MngFaqRepository mngFaqRepository;

    public int countFaqList() {
        return mngFaqRepository.countFaq();
    }

    public List<MngBoardDTO.NoticeListDTO> findAllByFaq(PageVO pageVO) {
        return mngFaqRepository.findAllFaqWithPagenation(pageVO);
    }

    public void deleteBoardById(int id) {
        mngFaqRepository.deleteBoardById(id);
    }

    public void createFaq(MngBoardDTO.FaqSubmitDto dto) {
        mngFaqRepository.createFaq(dto);
    }

    public Board findBoardById(int id) {
        return mngFaqRepository.findBoardById(id);
    }

    public void updateFaqById(MngBoardDTO.FaqSubmitDto dto) {
        mngFaqRepository.updateFaqById(dto);
    }
}
