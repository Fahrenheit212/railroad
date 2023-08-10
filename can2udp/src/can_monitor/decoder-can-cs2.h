/* ----------------------------------------------------------------------------
 * "THE BEER-WARE LICENSE" (Revision 42):
 * <info@gerhard-bertelsmann.de> wrote this file. As long as you retain this
 * notice you can do whatever you want with this stuff. If we meet some day,
 * and you think this stuff is worth it, you can buy me a beer in return
 * Gerhard Bertelsmann
 * ----------------------------------------------------------------------------
 *
 */

#ifndef _DECODE_CAN_CS2_H_
#define _DECODE_CAN_CS2_H_

#include "can-monitor.h"

char *getLoco(uint8_t * data, char *s);
void command_system(struct can_frame *frame);
void print_loc_proto(uint8_t proto);

#endif /* _DECODE_CAN_CS2_H_ */
