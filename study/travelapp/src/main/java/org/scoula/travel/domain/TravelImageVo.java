package org.scoula.travel.domain;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
@Builder
public class TravelImageVo {
    private Long no;
    private String filename;
    private Long travelNo;
}
