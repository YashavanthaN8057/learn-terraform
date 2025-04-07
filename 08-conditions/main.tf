variable "score" {
  default = 71
}

output "score" {
  value = var.score
}

output "score_x" {
  value = var.score > 70 ? "You got distinction" : "You did not get distinction"
}