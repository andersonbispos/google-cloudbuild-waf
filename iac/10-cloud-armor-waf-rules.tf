resource "google_compute_security_policy" "top10_teste" {
  name = "top10-teste"

  rule {
    description = "block sql injection attacks"
    action      = "deny(403)"
    priority    = "9001"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('sqli-v33-stable')"
      }
    }

    # preview = true
  }

  rule {
    description = "block XSS attacks"
    action      = "deny(403)"
    priority    = "9002"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('xss-v33-stable')"
      }
    }

    # preview = true
  }

  rule {
    description = "block local file inclusion"
    action      = "deny(403)"
    priority    = "9003"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('lfi-v33-stable')"
      }
    }

    # preview = true
  }

  rule {
    description = "block remote file inclusion"
    action      = "deny(403)"
    priority    = "9004"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('rfi-v33-stable')"
      }
    }

    # preview = true
  }

  rule {
    description = "block rce attacks"
    action      = "deny(403)"
    priority    = "9005"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('rce-v33-stable')"
      }
    }

    # preview = true
  }

  rule {
    description = "block methodenforcement attacks"
    action      = "deny(403)"
    priority    = "9006"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('methodenforcement-v33-stable')"
      }
    }

    # preview = true
  }

  rule {
    description = "block scannerdetection attacks"
    action      = "deny(403)"
    priority    = "9007"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('scannerdetection-v33-stable')"
      }
    }

    # preview = true
  }

  rule {
    description = "block protocolattack attacks"
    action      = "deny(403)"
    priority    = "9008"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('protocolattack-v33-stable')"
      }
    }

    # preview = true
  }

  rule {
    description = "block sessionfixation attacks"
    action      = "deny(403)"
    priority    = "9009"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('sessionfixation-v33-stable')"
      }
    }

    # preview = true
  }

  rule {
    description = "block nodejs attacks"
    action      = "deny(403)"
    priority    = "9010"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('nodejs-v33-stable')"
      }
    }

    # preview = true
  }

  rule {
    description = "block JSON-based SQL injection bypass vulnerability attacks"
    action      = "deny(403)"
    priority    = "9011"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('json-sqli-canary')"
      }
    }

    # preview = true
  }

  /* rule {
    description = "block php injection attacks"
    action      = "deny(403)"
    priority    = "9012"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('php-v33-stable')"
      }
    }

    # preview = true
  } */

  /* rule {
    description = "block java attacks"
    action      = "deny(403)"
    priority    = "9013"
    match {
      expr {
        expression = "evaluatePreconfiguredExpr('java-v33-stable')"
      }
    }

    # preview = true
  } */

  rule {
    action   = "allow"
    priority = "2147483647"
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = ["*"]
      }
    }
    description = "default rule"
  }
}