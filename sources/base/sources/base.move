module sui_ethernaut::level {
    use sui::tx_context::TxContext;
    use sui::object::{Self, UID};

    // 레벨을 나타내는 구조체
    struct Level has key, drop, store {
        id: UID,
        player: address,
    }

    // 공통 레벨 인스턴스 생성
    public entry fun create_instance(player: address, ctx: &mut TxContext): Level {
        Level {
            id: object::new(ctx),
            player: player,
        }
    }

    // 인스턴스 검증 함수 (각 레벨에서 오버라이드 가능)
    public fun validate_instance(_instance: &Level, _player: address): bool {
        _instance.player == _player
    }
}
