module sui_ethernaut::factory {
    use sui_ethernaut::level::{Level, create_instance};
    use sui::tx_context::TxContext;

    // 레벨 1 인스턴스 배포 함수
    public entry fun deploy_level1(ctx: &mut TxContext): Level {
        let player = @0x1; // 플레이어 주소를 정의하거나 전달받아야 함
        create_instance(player, ctx)
    }
}
