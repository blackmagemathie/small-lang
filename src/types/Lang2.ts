export interface Lang2Vowel {
    slug: string
    name: string
    ipa: string
    roman: string
    img: string
    sound?: string
}

export interface Lang2Consonant {
    slug: string
    name: string
    ipa: string
    roman: string
    img: string
    sound?: string
}

export interface Lang2Mora {
    slug: string
    name: string
    img: string
    sound?: string
    parent: {
        consonant: string
        vowel: string
    }
}

export interface Lang2Numeral {
    number: number
    name: string
    ipa: string
    src: {
        img: string
        sound?: string
    }
}