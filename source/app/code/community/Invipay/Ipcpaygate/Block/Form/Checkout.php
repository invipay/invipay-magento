<?php

class Invipay_Ipcpaygate_Block_Form_CheckoutLabel extends Mage_Core_Block_Template
{
	protected function _construct()
	{
		$this->setTemplate('ipcpaygate/form/checkout_label.phtml');
	}

	public function getLabelTitle()
	{
		return Mage::getStoreConfig('payment/ipcpaygate/title');
	}
}

class Invipay_Ipcpaygate_Block_Form_Checkout extends Mage_Payment_Block_Form
{

	protected function _construct()
	{
		$label = new Invipay_Ipcpaygate_Block_Form_CheckoutLabel();
		$this->setTemplate('ipcpaygate/form/checkout.phtml');
		$this->setMethodTitle('');
		$this->setMethodLabelAfterHtml($label->toHtml());
	}
}