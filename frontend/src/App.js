import React from 'react';
import { JsonRpcProvider, RawSigner, TransactionBlock } from '@mysten/sui.js';

function App() {
  const provider = new JsonRpcProvider('https://fullnode.devnet.sui.io');
  const [account, setAccount] = React.useState(null);

  React.useEffect(() => {
    // 계정 초기화 로직 추가
  }, []);

  const handleDeployLevel1 = async () => {
    const tx = new TransactionBlock();
    tx.moveCall({
      target: 'sui_ethernaut::factory::deploy_level1',
      arguments: [],
    });
    // 서명 및 전송 로직 추가
  };

  return (
    <div>
      <h1>Sui Ethernaut</h1>
      <button onClick={handleDeployLevel1}>Deploy Level 1</button>
    </div>
  );
}

export default App;
