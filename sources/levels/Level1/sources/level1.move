// module sui_ethernaut::level1 {
//     use sui::tx_context::TxContext;
//     use sui_ethernaut::level::{Level, create_instance, validate_instance};

//     // 레벨 1 인스턴스 생성
//     public entry fun create_level1_instance(player: address, ctx: &mut TxContext): Level {
//         create_instance(player, ctx)
//     }

//     // 레벨 1 인스턴스 검증 (추가 로직 적용 가능)
//     public fun validate_level1_instance(instance: &Level, player: address): bool {
//         validate_instance(instance, player) && /* 추가 검증 로직 */
//     }
// }
