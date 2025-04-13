import type { TypeGridGlyph } from "@/components/TypeGridGlyph"

export interface Lang2Vowel {
    slug: string
    name: string
    ipa: string
    roman: string
    src: {
        img: string
        sound?: string
    }
}

export interface Lang2Consonant {
    slug: string
    name: string
    ipa: string
    roman: string
    src: {
        img: string
        sound?: string
    }
}

export interface Lang2Compound {
    slug: string
    name: string
    src: {
        img: string
        sound?: string
    }
    parent: {
        consonant: string
        vowel: string
    }
}

export function Lang2Object_to_GridGlyph(
    o:Lang2Vowel|Lang2Consonant|Lang2Compound,
    urlRoot: string
):TypeGridGlyph {
    return {
        url: urlRoot+o.slug,
        src: o.src.img,
        title: o.name
    } as TypeGridGlyph
}