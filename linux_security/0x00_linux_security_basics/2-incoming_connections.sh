#!/bin/bash
sudo ufw allow 80 | sudo ss -t sport = :80
