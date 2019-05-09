import list
import int
import iodata

fn sound(n, divisor, sound) {
  case n % divisor {
  | 0 -> [sound]
  | _ -> []
  }
}

pub fn convert(n) {
  let sounds = list:flatten([
    sound(n, 3, "Pling"),
    sound(n, 5, "Plang"),
    sound(n, 7, "Plong"),
  ])

  case sounds {
  | [] -> int:to_string(n)
  | _ -> sounds |> iodata:from_strings |> iodata:to_string
  }
}
