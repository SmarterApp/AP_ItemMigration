#!/usr/bin/env bash

kops export kubecfg --state @kubecfgState@ --name @kubecfgName@

kubectl set image deployment/ap-item-migration-deployment ap-item-migration=@dockerTagBase@/ap-item-migration:@version@