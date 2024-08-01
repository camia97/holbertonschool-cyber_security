#!/bin/bash
sudo ss -ltp sport = :80 | ufw allow 80
