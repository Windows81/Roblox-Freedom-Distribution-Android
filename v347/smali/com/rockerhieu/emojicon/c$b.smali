.class public final Lcom/rockerhieu/emojicon/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rockerhieu/emojicon/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final Emojicon:[I

.field public static final Emojicon_emojiconAlignment:I = 0x0

.field public static final Emojicon_emojiconSize:I = 0x1

.field public static final Emojicon_emojiconTextLength:I = 0x2

.field public static final Emojicon_emojiconTextStart:I = 0x3

.field public static final Emojicon_emojiconUseSystemDefault:I = 0x4

.field public static final FontFamily:[I

.field public static final FontFamilyFont:[I

.field public static final FontFamilyFont_android_font:I = 0x0

.field public static final FontFamilyFont_android_fontStyle:I = 0x2

.field public static final FontFamilyFont_android_fontWeight:I = 0x1

.field public static final FontFamilyFont_font:I = 0x3

.field public static final FontFamilyFont_fontStyle:I = 0x4

.field public static final FontFamilyFont_fontWeight:I = 0x5

.field public static final FontFamily_fontProviderAuthority:I = 0x0

.field public static final FontFamily_fontProviderCerts:I = 0x1

.field public static final FontFamily_fontProviderFetchStrategy:I = 0x2

.field public static final FontFamily_fontProviderFetchTimeout:I = 0x3

.field public static final FontFamily_fontProviderPackage:I = 0x4

.field public static final FontFamily_fontProviderQuery:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 1837
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/rockerhieu/emojicon/c$b;->Emojicon:[I

    .line 1843
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/rockerhieu/emojicon/c$b;->FontFamily:[I

    .line 1850
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/rockerhieu/emojicon/c$b;->FontFamilyFont:[I

    return-void

    .line 1837
    :array_0
    .array-data 4
        0x7f03008d
        0x7f03008e
        0x7f03008f
        0x7f030090
        0x7f030091
    .end array-data

    .line 1843
    :array_1
    .array-data 4
        0x7f0300ac
        0x7f0300ad
        0x7f0300ae
        0x7f0300af
        0x7f0300b0
        0x7f0300b1
    .end array-data

    .line 1850
    :array_2
    .array-data 4
        0x1010532
        0x1010533
        0x101053f
        0x7f0300a9
        0x7f0300b2
        0x7f0300b3
    .end array-data
.end method
