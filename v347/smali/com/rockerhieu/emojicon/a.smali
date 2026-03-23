.class public final Lcom/rockerhieu/emojicon/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Landroid/util/SparseIntArray;

.field private static final b:Landroid/util/SparseIntArray;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0xe44b

    .line 32
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x405

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x1d7

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    sput-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/rockerhieu/emojicon/a;->c:Ljava/util/Map;

    .line 38
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f604

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f604:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 39
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f603

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f603:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 40
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f600

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f600:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 41
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f60a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f60a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 42
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x263a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_263a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f609

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f609:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f60d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f60d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 45
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f618

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f618:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f61a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f61a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 47
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f617

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f617:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 48
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f619

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f619:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 49
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f61c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f61c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 50
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f61d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f61d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 51
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f61b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f61b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f633

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f633:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 53
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f601

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f601:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 54
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f614

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f614:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f60c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f60c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 56
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f612

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f612:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 57
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f61e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f61e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 58
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f623

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f623:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 59
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f622

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f622:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 60
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f602

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f602:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 61
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f62d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f62d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 62
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f62a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f62a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 63
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f625

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f625:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 64
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f630

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f630:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 65
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f605

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f605:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 66
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f613

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f613:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 67
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f629

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f629:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 68
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f62b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f62b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 69
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f628

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f628:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 70
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f631

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f631:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 71
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f620

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f620:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 72
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f621

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f621:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 73
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f624

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f624:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 74
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f616

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f616:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f606

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f606:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 76
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f60b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f60b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 77
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f637

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f637:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 78
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f60e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f60e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 79
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f634

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f634:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 80
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f635

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f635:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 81
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f632

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f632:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 82
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f61f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f61f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 83
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f626

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f626:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 84
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f627

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f627:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 85
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f608

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f608:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 86
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f47f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f47f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f62e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f62e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 88
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f62c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f62c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 89
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f610

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f610:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 90
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f615

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f615:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f62f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f62f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 92
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f636

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f636:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 93
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f607

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f607:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 94
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f60f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f60f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 95
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f611

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f611:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f472

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f472:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f473

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f473:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 98
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f46e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f46e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 99
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f477

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f477:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 100
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f482

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f482:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 101
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f476

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f476:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 102
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f466

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f466:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 103
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f467

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f467:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 104
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f468

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f468:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f469

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f469:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 106
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f474

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f474:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 107
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f475

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f475:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 108
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f471

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f471:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 109
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f47c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f47c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 110
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f478

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f478:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 111
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f63a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f63a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 112
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f638

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f638:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 113
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f63b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f63b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 114
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f63d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f63d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 115
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f63c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f63c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 116
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f640

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f640:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f63f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f63f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f639

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f639:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 119
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f63e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f63e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 120
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f479

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f479:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f47a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f47a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f648

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f648:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f649

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f649:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f64a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f64a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 125
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f480

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f480:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 126
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f47d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f47d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 127
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4a9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 128
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f525

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f525:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 129
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2728

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2728:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 130
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f31f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f31f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 131
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ab

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ab:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4a5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 133
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4a2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 134
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4a6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 135
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4a7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 136
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4a4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 137
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4a8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 138
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f442

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f442:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 139
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f440

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f440:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 140
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f443

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f443:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f445

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f445:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f444

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f444:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f44d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 144
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f44e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f44c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f44a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x270a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_270a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x270c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_270c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 149
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f44b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 150
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x270b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_270b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 151
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f450

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f450:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 152
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f446

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f446:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 153
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f447

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f447:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 154
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f449

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f449:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 155
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f448

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f448:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 156
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f64c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f64c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 157
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f64f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f64f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x261d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_261d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f44f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 160
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4aa

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4aa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 161
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6b6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 162
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3c3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 163
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f483

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f483:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 164
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f46b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f46b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 165
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f46a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f46a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 166
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f46c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f46c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 167
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f46d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f46d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 168
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f48f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 169
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f491

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f491:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 170
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f46f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f46f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 171
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f646

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f646:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 172
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f645

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f645:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 173
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f481

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f481:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 174
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f64b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f64b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 175
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f486

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f486:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 176
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f487

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f487:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 177
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f485

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f485:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 178
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f470

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f470:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 179
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f64e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f64e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 180
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f64d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f64d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 181
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f647

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f647:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3a9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 183
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f451

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f451:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f452

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f452:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f45f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f45f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 186
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f45e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f45e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 187
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f461

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f461:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 188
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f460

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f460:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 189
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f462

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f462:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f455

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f455:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 191
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f454

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f454:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 192
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f45a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f45a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f457

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f457:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 194
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3bd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3bd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 195
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f456

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f456:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f458

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f458:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 197
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f459

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f459:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 198
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4bc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4bc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 199
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f45c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f45c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 200
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f45d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f45d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 201
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f45b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f45b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 202
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f453

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f453:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f380

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f380:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 204
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f302

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f302:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 205
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f484

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f484:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 206
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f49b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f49b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 207
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f499

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f499:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 208
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f49c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f49c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 209
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f49a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f49a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 210
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2764

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2764:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 211
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f494

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f494:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 212
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f497

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f497:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 213
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f493

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f493:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 214
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f495

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f495:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 215
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f496

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f496:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 216
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f49e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f49e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 217
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f498

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f498:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 218
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f48c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 219
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f48b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 220
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f48d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 221
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f48e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 222
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f464

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f464:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 223
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f465

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f465:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 224
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ac

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ac:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 225
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f463

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f463:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 226
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ad

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ad:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 229
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f436

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f436:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 230
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f43a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f43a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 231
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f431

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f431:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 232
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f42d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f42d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 233
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f439

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f439:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 234
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f430

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f430:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 235
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f438

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f438:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 236
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f42f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f42f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 237
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f428

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f428:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 238
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f43b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f43b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 239
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f437

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f437:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 240
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f43d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f43d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f42e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f42e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 242
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f417

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f417:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 243
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f435

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f435:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 244
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f412

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f412:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 245
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f434

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f434:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 246
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f411

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f411:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 247
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f418

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f418:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 248
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f43c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f43c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 249
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f427

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f427:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 250
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f426

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f426:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f424

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f424:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 252
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f425

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f425:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 253
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f423

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f423:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 254
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f414

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f414:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 255
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f40d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f40d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 256
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f422

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f422:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 257
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f41b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f41b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 258
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f41d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f41d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 259
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f41c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f41c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 260
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f41e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f41e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 261
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f40c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f40c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 262
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f419

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f419:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 263
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f41a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f41a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 264
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f420

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f420:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 265
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f41f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f41f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 266
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f42c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f42c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 267
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f433

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f433:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 268
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f40b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f40b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f404

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f404:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 270
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f40f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f40f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 271
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f400

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f400:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 272
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f403

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f403:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 273
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f405

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f405:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 274
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f407

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f407:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 275
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f409

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f409:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 276
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f40e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f40e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 277
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f410

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f410:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 278
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f413

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f413:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 279
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f415

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f415:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 280
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f416

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f416:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 281
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f401

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f401:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 282
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f402

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f402:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 283
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f432

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f432:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 284
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f421

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f421:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 285
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f40a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f40a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 286
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f42b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f42b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 287
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f42a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f42a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 288
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f406

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f406:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 289
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f408

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f408:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 290
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f429

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f429:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 291
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f43e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f43e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 292
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f490

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f490:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 293
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f338

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f338:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 294
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f337

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f337:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 295
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f340

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f340:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 296
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f339

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f339:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 297
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f33b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f33b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 298
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f33a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f33a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 299
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f341

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f341:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 300
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f343

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f343:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 301
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f342

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f342:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 302
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f33f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f33f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 303
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f33e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f33e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 304
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f344

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f344:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 305
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f335

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f335:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 306
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f334

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f334:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 307
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f332

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f332:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 308
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f333

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f333:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 309
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f330

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f330:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 310
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f331

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f331:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 311
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f33c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f33c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 312
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f310

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f310:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 313
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f31e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f31e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 314
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f31d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f31d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 315
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f31a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f31a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 316
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f311

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f311:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 317
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f312

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f312:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 318
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f313

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f313:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 319
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f314

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f314:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 320
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f315

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f315:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 321
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f316

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f316:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 322
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f317

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f317:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 323
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f318

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f318:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 324
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f31c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f31c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 325
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f31b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f31b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 326
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f319

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f319:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 327
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f30d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f30d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 328
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f30e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f30e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 329
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f30f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f30f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 330
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f30b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f30b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 331
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f30c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f30c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 332
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f320

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f303:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 333
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b50

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2b50:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 334
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2600

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2600:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26c5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26c5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 336
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2601

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2601:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 337
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26a1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26a1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 338
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2614

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2614:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 339
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2744

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2744:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 340
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26c4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26c4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 341
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f300

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f300:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 342
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f301

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f301:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 343
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f308

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f308:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 344
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f30a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f30a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 347
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f38d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f38d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 348
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f49d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f49d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 349
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f38e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f38e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 350
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f392

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f392:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 351
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f393

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f393:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 352
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f38f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f38f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 353
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f386

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f386:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 354
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f387

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f387:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 355
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f390

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f390:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 356
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f391

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f391:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 357
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f383

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f383:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 358
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f47b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f47b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 359
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f385

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f385:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 360
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f384

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f384:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 361
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f381

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f381:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 362
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f38b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f38b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 363
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f389

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f389:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 364
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f38a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f38a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 365
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f388

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f388:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 366
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f38c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f38c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 367
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f52e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f52e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 368
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3a5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 369
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4f7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 370
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4f9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 371
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4fc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4fc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 372
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4bf

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4bf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 373
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4c0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 374
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4bd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4bd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 375
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4be

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4be:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 376
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4bb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4bb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 377
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4f1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 378
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x260e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_260e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 379
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4de

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4de:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 380
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4df

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4df:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 381
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4e0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 382
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4e1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 383
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4fa

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4fa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 384
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4fb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4fb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 385
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f50a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f50a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 386
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f509

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f509:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 387
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f508

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f508:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 388
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f507

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f507:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 389
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f514

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f514:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 390
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f515

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f515:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 391
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4e2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 392
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4e3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 393
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23f3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23f3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 394
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x231b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_231b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 395
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23f0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23f0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 396
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x231a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_231a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 397
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f513

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f513:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 398
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f512

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f512:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 399
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f50f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f50f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 400
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f510

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f510:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 401
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f511

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f511:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 402
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f50e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f50e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 403
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4a1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 404
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f526

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f526:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 405
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f506

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f506:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 406
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f505

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f505:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 407
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f50c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f50c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 408
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f50b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f50b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 409
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f50d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f50d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 410
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6c1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6c1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 411
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6c0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6c0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 412
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6bf

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6bf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 413
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6bd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6bd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 414
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f527

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f527:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 415
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f529

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f529:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 416
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f528

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f528:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 417
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6aa

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6aa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 418
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6ac

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6ac:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 419
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4a3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 420
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f52b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f52b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 421
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f52a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f52a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 422
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f48a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 423
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f489

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f489:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 424
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4b0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 425
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4b4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 426
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4b5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 427
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4b7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 428
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4b6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 429
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4b3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 430
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4b8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 431
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4f2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 432
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4e7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 433
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4e5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 434
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4e4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 435
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2709

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2709:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 436
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4e9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 437
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4e8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 438
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ef

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ef:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 439
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4eb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4eb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 440
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ea

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ea:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 441
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ec

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ec:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 442
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ed

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ed:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 443
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ee

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ee:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4e6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 445
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4dd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4dd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 446
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4c4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 447
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4c3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 448
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4d1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4d1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 449
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ca

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ca:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 450
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4c8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 451
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4c9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 452
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4dc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4dc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 453
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4cb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4cb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 454
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4c5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 455
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4c6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 456
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4c7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 457
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4c1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 458
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4c2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 459
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2702

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2702:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 460
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4cc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4cc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 461
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ce

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ce:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 462
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2712

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2712:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 463
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x270f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_270f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 464
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4cf

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4cf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 465
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4d0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4d0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 466
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4d5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4d5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 467
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4d7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4d7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 468
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4d8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4d8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 469
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4d9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4d9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 470
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4d3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4d3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 471
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4d4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4d4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 472
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4d2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4d2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 473
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4da

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4da:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 474
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4d6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4d6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 475
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f516

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f516:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 476
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4db

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4db:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 477
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f52c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f52c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 478
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f52d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f52d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 479
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4f0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 480
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3a8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 481
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ac

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ac:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 482
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3a4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 483
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3a7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 484
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3bc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3bc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 485
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3b5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 486
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3b6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 487
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3b9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 488
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3bb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3bb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 489
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ba

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ba:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 490
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3b7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 491
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3b8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 492
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f47e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f47e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 493
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ae

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ae:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 494
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f0cf

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f0cf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 495
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3b4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 496
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f004

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f004:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 497
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3b2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 498
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3af

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3af:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 499
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3c8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 500
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3c0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 501
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26bd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26bd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 502
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26be

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26be:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 503
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3be

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3be:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 504
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3b1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 505
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3c9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 506
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3b3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 507
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 508
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6b5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 509
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6b4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 510
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3c1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 511
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3c7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 512
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3c6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 513
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3bf

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3bf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 514
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3c2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 515
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ca

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ca:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 516
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3c4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 517
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3a3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 518
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2615

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2615:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 519
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f375

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f375:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 520
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f376

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f376:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 521
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f37c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f37c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 522
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f37a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f37a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 523
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f37b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f37b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 524
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f378

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f378:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 525
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f379

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f379:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 526
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f377

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f377:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 527
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f374

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f374:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 528
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f355

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f355:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 529
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f354

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f354:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 530
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f35f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 531
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f357

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f357:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 532
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f356

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f356:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 533
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f35d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 534
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f35b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 535
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f364

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f364:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 536
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f371

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f371:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 537
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f363

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f363:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 538
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f365

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f365:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 539
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f359

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f359:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 540
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f358

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f358:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 541
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f35a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 542
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f35c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 543
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f372

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f372:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 544
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f362

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f362:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 545
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f361

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f361:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 546
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f373

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f373:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 547
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f35e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 548
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f369

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f369:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 549
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f36e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f36e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 550
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f366

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f366:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 551
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f368

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f368:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 552
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f367

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f367:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 553
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f382

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f382:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 554
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f370

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f370:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 555
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f36a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f36a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 556
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f36b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f36b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 557
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f36c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f36c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 558
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f36d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f36d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 559
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f36f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f36f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 560
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f34e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f34e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 561
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f34f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f34f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 562
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f34a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f34a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 563
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f34b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f34b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 564
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f352

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f352:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 565
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f347

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f347:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 566
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f349

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f349:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 567
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f353

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f353:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 568
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f351

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f351:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 569
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f348

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f348:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 570
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f34c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f34c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 571
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f350

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f350:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 572
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f34d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f34d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 573
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f360

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f360:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 574
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f346

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f346:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 575
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f345

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f345:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 576
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f33d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f33d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 579
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3e0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 580
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3e1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 581
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3eb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3eb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 582
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3e2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 583
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3e3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 584
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3e5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 585
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3e6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 586
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ea

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ea:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 587
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3e9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 588
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3e8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 589
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f492

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f492:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 590
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26ea

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26ea:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 591
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ec

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ec:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 592
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3e4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 593
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f307

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f307:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 594
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f306

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f306:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 595
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ef

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ef:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 596
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3f0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3f0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 597
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26fa

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26fa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 598
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ed

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ed:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 599
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5fc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5fc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 600
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5fe

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5fe:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 601
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5fb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5fb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 602
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f304

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f304:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 603
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f305

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f305:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 604
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f303

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f303:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 605
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5fd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5fd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 606
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f309

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f309:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 607
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3a0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 608
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3a1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 609
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 610
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3a2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 611
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6a2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 612
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 613
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6a4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 614
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6a3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 615
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2693

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2693:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 616
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f680

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f680:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 617
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2708

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2708:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 618
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ba

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ba:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 619
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f681

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f681:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 620
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f682

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f682:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 621
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f68a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f68a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 622
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f689

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f689:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 623
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f69e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f69e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 624
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f686

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f686:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 625
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f684

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f684:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 626
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f685

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f685:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 627
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f688

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f688:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 628
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f687

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f687:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 629
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f69d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f69d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 630
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f68b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f68b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 631
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f683

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f683:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 632
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f68e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f68e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 633
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f68c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f68c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 634
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f68d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f68d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 635
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f699

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f699:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 636
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f698

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f698:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 637
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f697

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f697:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 638
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f695

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f695:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 639
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f696

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f696:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 640
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f69b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f69b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 641
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f69a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f69a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 642
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6a8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 643
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f693

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f693:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 644
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f694

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f694:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 645
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f692

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f692:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 646
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f691

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f691:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 647
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f690

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f690:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 648
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6b2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 649
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6a1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 650
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f69f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f69f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 651
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6a0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 652
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f69c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f69c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 653
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f488

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f488:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 654
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f68f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f68f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 655
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ab

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ab:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 656
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6a6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 657
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6a5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 658
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26a0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26a0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 659
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6a7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 660
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f530

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f530:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 661
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26fd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26fd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 662
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ee

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ee:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 663
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3b0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 664
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2668

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2668:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 665
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5ff

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5ff:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 666
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3aa

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3aa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 667
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ad

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ad:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 668
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4cd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4cd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 669
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6a9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 692
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f51f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f51f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 693
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f522

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f522:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 695
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f523

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f523:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 696
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b06

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2b06:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 697
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b07

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2b07:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 698
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b05

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2b05:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 699
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x27a1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_27a1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 700
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f520

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f520:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 701
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f521

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f521:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 702
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f524

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f524:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 703
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2197

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2197:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 704
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2196

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2196:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 705
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2198

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2198:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 706
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2199

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2199:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 707
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2194

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2194:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 708
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2195

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2195:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 709
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f504

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f504:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 710
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x25c0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_25c0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 711
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x25b6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_25b6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 712
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f53c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f53c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 713
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f53d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f53d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 714
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x21a9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_21a9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 715
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x21aa

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_21aa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 716
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2139

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2139:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 717
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23ea

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23ea:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 718
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23e9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23e9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 719
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23eb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23eb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 720
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23ec

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23ec:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 721
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2935

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2935:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 722
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2934

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2934:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 723
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f197

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f197:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 724
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f500

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f500:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 725
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f501

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f501:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 726
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f502

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f502:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 727
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f195

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f195:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 728
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f199

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f199:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 729
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f192

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f192:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 730
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f193

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f193:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 731
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f196

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f196:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 732
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4f6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 733
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3a6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 734
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f201

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f201:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 735
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f22f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f22f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 736
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f233

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f233:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 737
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f235

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f235:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 738
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f234

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f234:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 739
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f232

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f232:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 740
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f250

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f250:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 741
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f239

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f239:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 742
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f23a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f23a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 743
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f236

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f236:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 744
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f21a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f21a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 745
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6bb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6bb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 746
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6b9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 747
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6ba

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6ba:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 748
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6bc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6bc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 749
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6be

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6be:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 750
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6b0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 751
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6ae

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6ae:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 752
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f17f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f17f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 753
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x267f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_267f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 754
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6ad

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6ad:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 755
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f237

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f237:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 756
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f238

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f238:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 757
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f202

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f202:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 758
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x24c2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_24c2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 759
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6c2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6c2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 760
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6c4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6c4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 761
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6c5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6c5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 762
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6c3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6c3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 763
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f251

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f251:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 764
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x3299

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_3299:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 765
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x3297

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_3297:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 766
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f191

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f191:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 767
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f198

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f198:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 768
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f194

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f194:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 769
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6ab

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6ab:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 770
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f51e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f51e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 771
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4f5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 772
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6af

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6af:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 773
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6b1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 774
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6b3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 775
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6b7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 776
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6b8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 777
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26d4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26d4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 778
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2733

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2733:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 779
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2747

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2747:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 780
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x274e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_274e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 781
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2705

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2705:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 782
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2734

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2734:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 783
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f49f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f49f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 784
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f19a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f19a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4f3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 786
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4f4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 787
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f170

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f170:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 788
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f171

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f171:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 789
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f18e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f18e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 790
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f17e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f17e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 791
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4a0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 792
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x27bf

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_27bf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 793
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x267b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_267b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 794
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2648

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2648:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 795
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2649

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2649:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 796
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x264a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 797
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x264b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 798
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x264c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 799
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x264d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 800
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x264e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 801
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x264f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 802
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2650

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2650:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 803
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2651

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2651:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 804
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2652

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2652:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 805
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2653

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2653:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 806
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26ce

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26ce:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 807
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f52f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f52f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 808
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3e7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 809
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4b9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 810
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4b2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 811
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4b1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 812
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0xa9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_00a9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 813
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0xae

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_00ae:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 814
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2122

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2122:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 815
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x274c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_274c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 816
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x203c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_203c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 817
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2049

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2049:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 818
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2757

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2757:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 819
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2753

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2753:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 820
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2755

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2755:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 821
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2754

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2754:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 822
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b55

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2b55:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 823
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f51d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f51d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 824
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f51a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f51a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 825
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f519

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f519:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 826
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f51b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f51b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 827
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f51c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f51c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 828
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f503

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f503:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 829
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f55b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f55b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 830
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f567

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f567:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 831
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f550

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f550:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 832
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f55c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f55c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 833
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f551

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f551:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 834
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f55d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f55d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 835
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f552

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f552:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 836
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f55e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f55e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 837
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f553

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f553:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 838
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f55f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f55f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 839
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f554

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f554:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 840
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f560

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f560:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 841
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f555

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f555:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 842
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f556

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f556:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 843
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f557

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f557:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 844
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f558

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f558:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 845
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f559

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f559:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 846
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f55a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f55a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 847
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f561

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f561:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 848
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f562

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f562:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 849
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f563

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f563:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 850
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f564

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f564:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 851
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f565

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f565:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 852
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f566

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f566:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 853
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2716

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2716:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 854
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2795

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2795:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 855
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2796

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2796:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 856
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2797

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2797:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 857
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2660

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2660:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 858
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2665

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2665:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 859
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2663

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2663:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 860
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2666

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2666:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 861
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ae

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ae:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 862
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4af

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4af:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 863
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2714

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2714:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 864
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2611

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2611:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 865
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f518

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f518:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 866
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f517

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f517:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 867
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x27b0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_27b0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 868
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x3030

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_3030:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 869
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x303d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_303d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 870
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f531

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f531:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 871
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_25fc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 872
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_25fb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 873
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fe

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_25fe:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 874
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x25fd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_25fd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 875
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x25aa

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_25aa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 876
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x25ab

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_25ab:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 877
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f53a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f53a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 878
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f532

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f532:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 879
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f533

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f533:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 880
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26ab

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26ab:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 881
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26aa

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26aa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 882
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f534

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f534:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 883
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f535

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f535:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 884
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f53b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f53b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 885
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b1c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2b1c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 886
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2b1b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2b1b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 887
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f536

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f536:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 888
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f537

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f537:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 889
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f538

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f538:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 890
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f539

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f539:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 893
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe001

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f466:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 894
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe002

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f467:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 895
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe003

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 896
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe004

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f468:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 897
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe005

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f469:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 898
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe006

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f455:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 899
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe007

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f45e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 900
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe008

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 901
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe009

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4de:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 902
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe00a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 903
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe00b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 904
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe00c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4bb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 905
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe00d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 906
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe00e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 907
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe00f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_261d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 908
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe010

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_270a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 909
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe011

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_270c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 910
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe012

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f64b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 911
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe013

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3bf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 912
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe014

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 913
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe015

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3be:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 914
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe016

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26be:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 915
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe017

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 916
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe018

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26bd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 917
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe019

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 918
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe01a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f434:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 919
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe01b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f697:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 920
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe01c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 921
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe01d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2708:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 922
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe01e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f683:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 923
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe01f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f685:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 924
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe020

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2753:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 925
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe021

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2757:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 926
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe022

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2764:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 927
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe023

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f494:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 928
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe024

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f550:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 929
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe025

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f551:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 930
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe026

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f552:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 931
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe027

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f553:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 932
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe028

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f554:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 933
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe029

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f555:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 934
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe02a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f556:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 935
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe02b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f557:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 936
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe02c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f558:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 937
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe02d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f559:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 938
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe02e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f55a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 939
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe02f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f55b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 940
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe030

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f338:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 941
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe031

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f531:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 942
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe032

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f339:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 943
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe033

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f384:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 944
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe034

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 945
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe035

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 946
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe036

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 947
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe037

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26ea:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 948
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe038

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 949
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe039

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f689:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 950
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe03a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26fd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 951
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe03b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5fb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 952
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe03c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 953
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe03d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 954
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe03e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 955
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe03f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f511:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 956
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe040

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 957
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe041

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 958
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe042

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ba:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 959
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe043

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f374:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 960
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe044

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f377:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 961
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe045

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2615:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 962
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe046

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f370:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 963
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe047

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f37a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 964
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe048

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26c4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 965
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe049

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2601:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 966
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe04a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2600:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 967
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe04b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2614:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 968
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe04c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f313:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 969
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe04d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f304:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 970
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe04e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f47c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 971
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe04f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f431:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 972
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe050

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f42f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 973
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe051

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f43b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 974
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe052

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f429:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 975
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe053

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f42d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 976
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe054

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f433:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 977
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe055

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f427:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 978
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe056

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f60a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 979
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe057

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f603:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 980
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe058

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f61e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 981
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe059

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f620:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 982
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe05a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 983
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe101

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ea:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 984
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe102

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ee:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 985
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe103

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 986
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe104

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 987
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe105

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f61c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 988
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe106

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f60d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 989
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe107

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f631:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 990
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe108

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f613:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 991
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe109

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f435:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 992
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe10a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f419:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 993
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe10b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f437:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 994
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe10c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f47d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 995
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe10d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f680:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 996
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe10e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f451:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 997
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe10f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 998
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe110

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f331:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 999
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe111

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1000
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe112

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f381:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1001
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe113

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f52b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1002
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe114

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f50d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1003
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe115

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1004
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe116

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f528:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1005
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe117

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f386:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1006
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe118

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f341:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1007
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe119

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f342:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1008
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe11a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f47f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1009
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe11b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f47b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1010
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe11c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f480:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1011
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe11d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f525:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1012
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe11e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4bc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1013
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe11f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ba:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1014
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe120

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f354:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1015
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe121

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1016
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe122

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26fa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1017
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe123

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2668:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1018
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe124

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1019
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe125

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ab:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1020
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe126

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4bf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1021
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe127

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1022
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe128

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4fb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1023
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe129

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4fc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1024
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe12a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4fa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1025
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe12b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f47e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1026
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe12c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_303d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1027
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe12d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f004:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1028
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe12e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f19a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1029
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe12f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1030
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe130

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3af:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1031
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe131

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1032
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe132

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1033
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe133

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1034
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe134

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f40e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1035
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe135

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1036
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe136

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1037
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe137

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1038
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe138

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1039
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe139

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6ba:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1040
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe13a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6bc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1041
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe13b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f489:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1042
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe13c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1043
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe13d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26a1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1044
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe13e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f460:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1045
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe13f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6c0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1046
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe140

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6bd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1047
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe141

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f50a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1048
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe142

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1049
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe143

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f38c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1050
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe144

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f50f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1051
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe145

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f513:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1052
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe146

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f306:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1053
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe147

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f373:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1054
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe148

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1055
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe149

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1056
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe14a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4b9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1057
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe14b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1058
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe14c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4aa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1059
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe14d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1060
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe14e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1061
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe14f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f17f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1062
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe150

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f68f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1063
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe151

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6bb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1064
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe152

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f46e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1065
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe153

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1066
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe154

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1067
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe155

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1068
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe156

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ea:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1069
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe157

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3eb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1070
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe158

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1071
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe159

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f68c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1072
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe15a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f695:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1073
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe201

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6b6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1074
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe202

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6a2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1075
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe203

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f201:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1076
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe204

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f49f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1077
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe205

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2734:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1078
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe206

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2733:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1079
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe207

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f51e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1080
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe208

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6ad:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1081
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe209

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f530:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1082
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe20a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_267f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1083
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe20b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1084
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe20c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2665:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1085
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe20d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2666:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1086
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe20e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2660:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1087
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe20f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2663:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1088
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe210

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_0023:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1089
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe211

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_27bf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1090
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe212

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f195:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1091
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe213

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f199:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1092
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe214

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f192:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1093
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe215

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f236:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1094
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe216

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f21a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1095
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe217

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f237:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1096
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe218

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f238:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1097
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe219

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f534:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1098
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe21a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f532:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1099
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe21b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f533:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1100
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe21c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_0031:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1101
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe21d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_0032:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1102
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe21e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_0033:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1103
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe21f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_0034:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1104
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe220

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_0035:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1105
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe221

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_0036:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1106
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe222

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_0037:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1107
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe223

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_0038:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1108
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe224

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_0039:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1109
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe225

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_0030:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1110
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe226

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f250:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1111
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe227

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f239:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1112
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe228

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f202:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1113
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe229

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f194:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1114
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe22a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f235:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1115
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe22b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f233:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1116
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe22c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f22f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1117
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe22d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f23a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1118
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe22e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f446:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1119
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe22f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f447:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1120
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe230

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f448:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1121
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe231

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f449:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1122
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe232

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2b06:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1123
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe233

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2b07:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1124
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe234

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_27a1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1125
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe235

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f519:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1126
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe236

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2197:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1127
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe237

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2196:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1128
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe238

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2198:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1129
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe239

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2199:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1130
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe23a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_25b6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1131
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe23b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_25c0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1132
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe23c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23e9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1133
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe23d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23ea:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1134
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe23e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f52e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1135
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe23f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2648:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1136
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe240

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2649:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1137
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe241

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1138
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe242

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1139
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe243

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1140
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe244

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1141
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe245

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1142
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe246

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_264f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1143
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe247

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2650:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1144
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe248

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2651:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1145
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe249

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2652:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1146
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe24a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2653:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1147
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe24b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26ce:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1148
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe24c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f51d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1149
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe24d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f197:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1150
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe24e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_00a9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1151
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe24f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_00ae:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1152
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe250

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1153
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe251

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1154
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe252

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26a0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1155
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe253

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f481:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1156
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe301

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4c3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1157
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe302

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f454:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1158
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe303

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f33a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1159
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe304

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f337:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1160
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe305

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f33b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1161
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe306

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f490:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1162
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe307

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f334:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1163
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe308

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f335:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1164
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe309

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6be:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1165
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe30a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1166
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe30b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f376:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1167
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe30c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f37b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1168
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe30d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_3297:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1169
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe30e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6ac:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1170
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe30f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1171
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe310

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f388:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1172
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe311

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1173
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe312

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f389:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1174
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe313

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2702:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1175
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe314

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f380:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1176
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe315

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_3299:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1177
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe316

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4bd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1178
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe317

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4e3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1179
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe318

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f452:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1180
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe319

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f457:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1181
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe31a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f461:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1182
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe31b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f462:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1183
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe31c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f484:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1184
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe31d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f485:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1185
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe31e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f486:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1186
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe31f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f487:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1187
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe320

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f488:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1188
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe321

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f458:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1189
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe322

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f459:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1190
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe323

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f45c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1191
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe324

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ac:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1192
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe325

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f514:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1193
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe326

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1194
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe327

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f493:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1195
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe328

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f48c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1196
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe329

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f498:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1197
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe32a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f499:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1198
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe32b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f49a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1199
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe32c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f49b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1200
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe32d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f49c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1201
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe32e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2728:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1202
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe32f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2b50:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1203
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe330

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1204
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe331

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1205
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe332

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2b55:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1206
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe333

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2716:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1207
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe334

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4a2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1208
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe335

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f31f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1209
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe336

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2754:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1210
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe337

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2755:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1211
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe338

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f375:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1212
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe339

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1213
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe33a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f366:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1214
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe33b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1215
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe33c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f361:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1216
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe33d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f358:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1217
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe33e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1218
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe33f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1219
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe340

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1220
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe341

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f35b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1221
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe342

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f359:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1222
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe343

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f362:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1223
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe344

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f363:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1224
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe345

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f34e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1225
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe346

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f34a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1226
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe347

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f353:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1227
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe348

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f349:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1228
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe349

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f345:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1229
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe34a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f346:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1230
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe34b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f382:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1231
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe34c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f371:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1232
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe34d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f372:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1233
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe401

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f625:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1234
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe402

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f60f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1235
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe403

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f614:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1236
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe404

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f601:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1237
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe405

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f609:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1238
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe406

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f623:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1239
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe407

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f616:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1240
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe408

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f62a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1241
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe409

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f445:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1242
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe40a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f606:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1243
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe40b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f628:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1244
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe40c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f637:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1245
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe40d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f633:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1246
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe40e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f612:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1247
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe40f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f630:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1248
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe410

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f632:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1249
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe411

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f62d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1250
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe412

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f602:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1251
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe413

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f622:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1252
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe414

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_263a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1253
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe415

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f605:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1254
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe416

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f621:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1255
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe417

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f61a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1256
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe418

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f618:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1257
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe419

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f440:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1258
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe41a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f443:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1259
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe41b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f442:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1260
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe41c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f444:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1261
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe41d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f64f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1262
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe41e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1263
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe41f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1264
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe420

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1265
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe421

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f44e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1266
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe422

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f450:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1267
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe423

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f645:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1268
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe424

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f646:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1269
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe425

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f491:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1270
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe426

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f647:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1271
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe427

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f64c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1272
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe428

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f46b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1273
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe429

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f46f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1274
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe42a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1275
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe42b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1276
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe42c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3b1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1277
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe42d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ca:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1278
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe42e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f699:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1279
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe42f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f69a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1280
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe430

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f692:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1281
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe431

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f691:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1282
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe432

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f693:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1283
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe433

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1284
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe434

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f687:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1285
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe435

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f684:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1286
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe436

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f38d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1287
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe437

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f49d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1288
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe438

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f38e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1289
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe439

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f393:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1290
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe43a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f392:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1291
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe43b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f38f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1292
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe43c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f302:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1293
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe43d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f492:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1294
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe43e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f30a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1295
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe43f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f367:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1296
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe440

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f387:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1297
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe441

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f41a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1298
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe442

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f390:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1299
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe443

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f300:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1300
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe444

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f33e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1301
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe445

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f383:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1302
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe446

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f391:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1303
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe447

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f343:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1304
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe448

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f385:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1305
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe449

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f305:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1306
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe44a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f307:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1307
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    sget v1, Lcom/rockerhieu/emojicon/c$a;->emoji_1f303:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1308
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    sget v1, Lcom/rockerhieu/emojicon/c$a;->emoji_1f30c:I

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1309
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe44c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f308:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1310
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe501

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3e9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1311
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe502

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1312
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe503

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1313
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe504

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ec:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1314
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe505

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ef:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1315
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe506

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3f0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1316
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe507

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3a6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1317
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe508

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ed:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1318
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe509

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5fc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1319
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe50b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f1ef_1f1f5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1320
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe50c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f1fa_1f1f8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1321
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe50d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f1eb_1f1f7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1322
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe50e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f1e9_1f1ea:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1323
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe50f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f1ee_1f1f9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1324
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe510

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f1ec_1f1e7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1325
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe511

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f1ea_1f1f8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1326
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe512

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f1f7_1f1fa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1327
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe513

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f1e8_1f1f3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1328
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe514

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f1f0_1f1f7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1329
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe515

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f471:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1330
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe516

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f472:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1331
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe517

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f473:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1332
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe518

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f474:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1333
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe519

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f475:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1334
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe51a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f476:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1335
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe51b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f477:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1336
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe51c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f478:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1337
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe51d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5fd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1338
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe51e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f482:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1339
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe51f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f483:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1340
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe520

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f42c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1341
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe521

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f426:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1342
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe522

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f420:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1343
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe523

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f423:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1344
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe524

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f439:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1345
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe525

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f41b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1346
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe526

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f418:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1347
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe527

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f428:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1348
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe528

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f412:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1349
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe529

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f411:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1350
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe52a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f43a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1351
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe52b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f42e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1352
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe52c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f430:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1353
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe52d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f40d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1354
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe52e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f414:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1355
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe52f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f417:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1356
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe530

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f42b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1357
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe531

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f438:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1358
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe532

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f170:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1359
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe533

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f171:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1360
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe534

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f18e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1361
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe535

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f17e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1362
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe536

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f43e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1363
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    const v1, 0xe537

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2122:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1365
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f642

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f642:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1366
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f917

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f917:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1367
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f914

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f914:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1368
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f644

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f644:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1369
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f910

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f910:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1370
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f913

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f913:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1371
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2639

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2639:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1372
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f641

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f641:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1373
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f643

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f643:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1374
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f912

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f912:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1375
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f915

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f915:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1376
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f911

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f911:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1377
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26d1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26d1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1378
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f575

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f575:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1379
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5e3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5e3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1380
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f574

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f574:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1381
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f595

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f595:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1382
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f918

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f918:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1383
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f590

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f590:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1384
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x270d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_270d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1385
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f441

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f441:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1386
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2763

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2763:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1387
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f573

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f573:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1388
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5ef

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5ef:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1389
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f576

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f576:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1390
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6cd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6cd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1391
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4ff

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4ff:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1392
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2620

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2620:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1393
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f916

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f916:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1394
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f981

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f981:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1395
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f984

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f984:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1396
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f43f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f43f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1397
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f983

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f983:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1398
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f54a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f54a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1399
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f980

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f980:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1400
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f577

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f577:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1401
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f578

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f578:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1402
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f982

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f982:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1403
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3f5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3f5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1404
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2618

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2618:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1405
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f336

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f336:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1406
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f9c0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f9c0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1407
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f32d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f32d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1408
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f32e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f32e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1409
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f32f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f32f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1410
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f37f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f37f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1411
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f37e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f37e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1412
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f37d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f37d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1413
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3fa

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3fa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1414
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5fa

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5fa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1415
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3d4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3d4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1416
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1417
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3d5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3d5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1418
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3d6

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3d6:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1419
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3dc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3dc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1420
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3dd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3dd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1421
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3de

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3de:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1422
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3df

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3df:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1423
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3db

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3db:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1424
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3d7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3d7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1425
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3d8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3d8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1426
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3d9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3d9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1427
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3da

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3da:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1428
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6d0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6d0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1429
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f54b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f54b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1430
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f54c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f54c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1431
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f54d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f54d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1432
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5bc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5bc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1433
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6e2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6e2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1434
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6e3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6e3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1435
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6e4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6e4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1436
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6f3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6f3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1437
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1438
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6e5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6e5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1439
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6e9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6e9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1440
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6eb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6eb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1441
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6ec

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6ec:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1442
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6f0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6f0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1443
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6ce

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6ce:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1444
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6cc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6cc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1445
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6cf

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6cf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1446
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6cb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6cb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1447
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23f1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23f1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1448
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23f2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23f2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1449
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f570

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f570:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1450
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f321

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f321:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1451
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26c8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26c8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1452
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f324

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f324:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1453
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f325

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f325:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1454
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f326

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f326:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1455
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f327

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f327:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1456
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f328

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f328:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1457
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f329

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f329:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1458
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f32a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f32a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1459
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f32b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f32b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1460
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f32c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f32c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1461
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2602

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2602:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1462
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1463
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2603

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2603:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1464
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2604

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2604:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1465
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f54e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f54e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1466
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f396

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f396:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1467
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f397

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f397:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1468
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f39e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f39e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1469
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f39f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f39f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1470
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3f7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3f7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1471
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3cc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3cc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1472
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1473
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f7

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f7:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1474
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26f9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26f9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1475
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3cb

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3cb:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1476
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3ce

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3ce:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1477
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3cd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3cd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1478
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3c5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3c5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1479
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3cf

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3cf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1480
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3d0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3d0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1481
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3d1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3d1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1482
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3d2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3d2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1483
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3d3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3d3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1484
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3f8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3f8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1485
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f579

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f579:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1486
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23ed

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23ed:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1487
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23ef

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23ef:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1488
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23ee

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23ee:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1489
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23f8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23f8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1490
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23f9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23f9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1491
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x23fa

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_23fa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1492
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f399

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f399:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1493
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f39a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f39a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1494
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f39b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f39b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1495
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5a5

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5a5:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1496
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5a8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5a8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1497
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2328

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2328:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1498
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5b1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5b1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1499
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5b2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5b2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1500
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4fd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4fd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1501
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f4f8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f4f8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1502
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f56f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f56f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1503
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5de

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5de:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1504
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5f3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5f3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1505
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f58b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f58b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1506
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f58a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f58a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1507
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f58c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f58c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1508
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f58d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f58d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1509
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5c2    # 1.79997E-40f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5c2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1510
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5d2

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5d2:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1511
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5d3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5d3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1512
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f587

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f587:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1513
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5c3    # 1.79998E-40f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5c3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1514
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5c4    # 1.8E-40f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5c4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1515
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5d1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5d1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1516
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5dd

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5dd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1517
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26cf

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26cf:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1518
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2692

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2692:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1519
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6e0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6e0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1520
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2699

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2699:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1521
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5dc

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5dc:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1522
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2697

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2697:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1523
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2696

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2696:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1524
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26d3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26d3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1525
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5e1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5e1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1526
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2694

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2694:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1527
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f6e1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f6e1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1528
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3f9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3f9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1529
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26b0

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26b0:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1530
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26b1

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26b1:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1531
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3f3

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3f3:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1532
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f3f4

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f3f4:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1533
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x269c

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_269c:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1534
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x269b

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_269b:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1535
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f549

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f549:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1536
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2721

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2721:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1537
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2638

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2638:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1538
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x262f

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_262f:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1539
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x271d

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_271d:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1540
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2626

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2626:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1541
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x26e9

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_26e9:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1542
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x262a

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_262a:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1543
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x262e

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_262e:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1544
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2622

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2622:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1545
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const/16 v1, 0x2623

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_2623:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1546
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    const v1, 0x1f5e8

    sget v2, Lcom/rockerhieu/emojicon/c$a;->emoji_1f5e8:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1547
    return-void
.end method

.method private static a(I)I
    .locals 1

    .prologue
    .line 1719
    const/4 v0, 0x0

    .line 1720
    packed-switch p0, :pswitch_data_0

    .line 1760
    :goto_0
    :pswitch_0
    return v0

    .line 1722
    :pswitch_1
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_0023:I

    goto :goto_0

    .line 1725
    :pswitch_2
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_002a_20e3:I

    goto :goto_0

    .line 1728
    :pswitch_3
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_0030:I

    goto :goto_0

    .line 1731
    :pswitch_4
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_0031:I

    goto :goto_0

    .line 1734
    :pswitch_5
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_0032:I

    goto :goto_0

    .line 1737
    :pswitch_6
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_0033:I

    goto :goto_0

    .line 1740
    :pswitch_7
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_0034:I

    goto :goto_0

    .line 1743
    :pswitch_8
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_0035:I

    goto :goto_0

    .line 1746
    :pswitch_9
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_0036:I

    goto :goto_0

    .line 1749
    :pswitch_a
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_0037:I

    goto :goto_0

    .line 1752
    :pswitch_b
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_0038:I

    goto :goto_0

    .line 1755
    :pswitch_c
    sget v0, Lcom/rockerhieu/emojicon/c$a;->emoji_0039:I

    goto :goto_0

    .line 1720
    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 1554
    sget-object v0, Lcom/rockerhieu/emojicon/a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/text/Spannable;IIIIIZ)V
    .locals 8

    .prologue
    .line 1616
    if-eqz p7, :cond_1

    .line 1716
    :cond_0
    return-void

    .line 1620
    :cond_1
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v1

    .line 1621
    sub-int v0, v1, p5

    .line 1622
    if-ltz p6, :cond_2

    if-lt p6, v0, :cond_3

    :cond_2
    move v6, v1

    .line 1625
    :goto_0
    const/4 v0, 0x0

    const-class v2, Lcom/rockerhieu/emojicon/b;

    invoke-interface {p1, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rockerhieu/emojicon/b;

    .line 1626
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 1627
    aget-object v2, v0, v1

    invoke-interface {p1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1626
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1622
    :cond_3
    add-int v0, p6, p5

    move v6, v0

    goto :goto_0

    .line 1631
    :cond_4
    :goto_2
    if-ge p5, v6, :cond_0

    .line 1632
    const/4 v4, 0x0

    .line 1633
    const/4 v2, 0x0

    .line 1634
    invoke-interface {p1, p5}, Landroid/text/Spannable;->charAt(I)C

    move-result v0

    .line 1635
    invoke-static {v0}, Lcom/rockerhieu/emojicon/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1636
    invoke-static {v0}, Lcom/rockerhieu/emojicon/a;->b(C)I

    move-result v2

    .line 1637
    if-nez v2, :cond_8

    const/4 v0, 0x0

    :goto_3
    move v4, v0

    .line 1640
    :cond_5
    if-nez v2, :cond_c

    .line 1641
    invoke-static {p1, p5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1642
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 1644
    const/16 v0, 0xff

    if-le v3, v0, :cond_6

    .line 1645
    invoke-static {p0, v3}, Lcom/rockerhieu/emojicon/a;->a(Landroid/content/Context;I)I

    move-result v2

    .line 1648
    :cond_6
    add-int v0, p5, v4

    if-ge v0, v6, :cond_c

    .line 1649
    add-int v0, p5, v4

    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1651
    const v1, 0xfe0f

    if-ne v0, v1, :cond_a

    .line 1652
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    .line 1653
    add-int v0, p5, v4

    add-int/2addr v0, v1

    if-ge v0, v6, :cond_d

    .line 1655
    add-int v0, p5, v4

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 1656
    const/16 v5, 0x20e3

    if-ne v0, v5, :cond_d

    .line 1657
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 1658
    invoke-static {v3}, Lcom/rockerhieu/emojicon/a;->a(I)I

    move-result v3

    .line 1660
    if-nez v3, :cond_9

    .line 1661
    const/4 v1, 0x0

    .line 1662
    const/4 v0, 0x0

    .line 1666
    :goto_4
    add-int/2addr v0, v1

    add-int/2addr v0, v4

    :goto_5
    move v7, v0

    .line 1712
    :goto_6
    if-lez v2, :cond_7

    .line 1713
    new-instance v0, Lcom/rockerhieu/emojicon/b;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/rockerhieu/emojicon/b;-><init>(Landroid/content/Context;IIII)V

    add-int v1, p5, v7

    const/16 v2, 0x21

    invoke-interface {p1, v0, p5, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1631
    :cond_7
    add-int/2addr p5, v7

    goto :goto_2

    .line 1637
    :cond_8
    const/4 v0, 0x1

    goto :goto_3

    :cond_9
    move v2, v3

    .line 1664
    goto :goto_4

    .line 1669
    :cond_a
    const/16 v1, 0x20e3

    if-ne v0, v1, :cond_c

    .line 1671
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    .line 1673
    invoke-static {v3}, Lcom/rockerhieu/emojicon/a;->a(I)I

    move-result v1

    .line 1674
    if-nez v1, :cond_b

    .line 1675
    const/4 v0, 0x0

    .line 1679
    :goto_7
    add-int/2addr v4, v0

    move v7, v4

    goto :goto_6

    :cond_b
    move v2, v1

    .line 1677
    goto :goto_7

    :cond_c
    move v7, v4

    goto :goto_6

    :cond_d
    move v0, v4

    goto :goto_5
.end method

.method private static a(C)Z
    .locals 2

    .prologue
    .line 1550
    shr-int/lit8 v0, p0, 0xc

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(C)I
    .locals 1

    .prologue
    .line 1558
    sget-object v0, Lcom/rockerhieu/emojicon/a;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method
