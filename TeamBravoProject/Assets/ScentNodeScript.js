﻿#pragma strict

public var index : int;
public var scentReave : ScentReaveScript;

function Start () {

}

function Update () {

}

function SetIndex(newIndex : int) {
	index = newIndex;
}

function GetIndex() {
	return index;
}

function OnTriggerEnter(other : Collider) {
	scentReave.SetNextIndex(index);	
}