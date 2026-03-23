.class final Le/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k$a;
    }
.end annotation


# static fields
.field private static final a:[C


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lc/t;

.field private d:Ljava/lang/String;

.field private e:Lc/t$a;

.field private final f:Lc/aa$a;

.field private g:Lc/v;

.field private final h:Z

.field private i:Lc/w$a;

.field private j:Lc/q$a;

.field private k:Lc/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 30
    fill-array-data v0, :array_0

    sput-object v0, Le/k;->a:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lc/t;Ljava/lang/String;Lc/s;Lc/v;ZZZ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Le/k;->b:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Le/k;->c:Lc/t;

    .line 52
    iput-object p3, p0, Le/k;->d:Ljava/lang/String;

    .line 53
    new-instance p1, Lc/aa$a;

    invoke-direct {p1}, Lc/aa$a;-><init>()V

    iput-object p1, p0, Le/k;->f:Lc/aa$a;

    .line 54
    iput-object p5, p0, Le/k;->g:Lc/v;

    .line 55
    iput-boolean p6, p0, Le/k;->h:Z

    if-eqz p4, :cond_0

    .line 58
    invoke-virtual {p1, p4}, Lc/aa$a;->a(Lc/s;)Lc/aa$a;

    :cond_0
    if-eqz p7, :cond_1

    .line 63
    new-instance p1, Lc/q$a;

    invoke-direct {p1}, Lc/q$a;-><init>()V

    iput-object p1, p0, Le/k;->j:Lc/q$a;

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    .line 66
    new-instance p1, Lc/w$a;

    invoke-direct {p1}, Lc/w$a;-><init>()V

    iput-object p1, p0, Le/k;->i:Lc/w$a;

    .line 67
    sget-object p2, Lc/w;->e:Lc/v;

    invoke-virtual {p1, p2}, Lc/w$a;->a(Lc/v;)Lc/w$a;

    :cond_2
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 99
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    const-string v4, " \"<>^`{}|\\?#"

    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez p1, :cond_0

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 104
    :cond_1
    :goto_1
    new-instance v3, Ld/c;

    invoke-direct {v3}, Ld/c;-><init>()V

    .line 105
    invoke-virtual {v3, p0, v1, v2}, Ld/c;->a(Ljava/lang/String;II)Ld/c;

    .line 106
    invoke-static {v3, p0, v2, v0, p1}, Le/k;->a(Ld/c;Ljava/lang/String;IIZ)V

    .line 107
    invoke-virtual {v3}, Ld/c;->p()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static a(Ld/c;Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_5

    .line 120
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2

    const-string v2, " \"<>^`{}|\\?#"

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    if-nez p4, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 140
    :cond_1
    invoke-virtual {p0, v1}, Ld/c;->a(I)Ld/c;

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 129
    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    .line 131
    :cond_3
    invoke-virtual {v0, v1}, Ld/c;->a(I)Ld/c;

    .line 132
    :goto_2
    invoke-virtual {v0}, Ld/c;->f()Z

    move-result v2

    if-nez v2, :cond_4

    .line 133
    invoke-virtual {v0}, Ld/c;->i()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 134
    invoke-virtual {p0, v3}, Ld/c;->b(I)Ld/c;

    .line 135
    sget-object v4, Le/k;->a:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Ld/c;->b(I)Ld/c;

    .line 136
    sget-object v4, Le/k;->a:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Ld/c;->b(I)Ld/c;

    goto :goto_2

    .line 119
    :cond_4
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method a()Lc/aa;
    .locals 5

    .line 185
    iget-object v0, p0, Le/k;->e:Lc/t$a;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lc/t$a;->c()Lc/t;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Le/k;->c:Lc/t;

    iget-object v1, p0, Le/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc/t;->c(Ljava/lang/String;)Lc/t;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 197
    :goto_0
    iget-object v1, p0, Le/k;->k:Lc/ab;

    if-nez v1, :cond_3

    .line 200
    iget-object v2, p0, Le/k;->j:Lc/q$a;

    if-eqz v2, :cond_1

    .line 201
    invoke-virtual {v2}, Lc/q$a;->a()Lc/q;

    move-result-object v1

    goto :goto_1

    .line 202
    :cond_1
    iget-object v2, p0, Le/k;->i:Lc/w$a;

    if-eqz v2, :cond_2

    .line 203
    invoke-virtual {v2}, Lc/w$a;->a()Lc/w;

    move-result-object v1

    goto :goto_1

    .line 204
    :cond_2
    iget-boolean v2, p0, Le/k;->h:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 206
    invoke-static {v1, v2}, Lc/ab;->a(Lc/v;[B)Lc/ab;

    move-result-object v1

    .line 210
    :cond_3
    :goto_1
    iget-object v2, p0, Le/k;->g:Lc/v;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 213
    new-instance v3, Le/k$a;

    invoke-direct {v3, v1, v2}, Le/k$a;-><init>(Lc/ab;Lc/v;)V

    move-object v1, v3

    goto :goto_2

    .line 215
    :cond_4
    iget-object v3, p0, Le/k;->f:Lc/aa$a;

    invoke-virtual {v2}, Lc/v;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4, v2}, Lc/aa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    .line 219
    :cond_5
    :goto_2
    iget-object v2, p0, Le/k;->f:Lc/aa$a;

    .line 220
    invoke-virtual {v2, v0}, Lc/aa$a;->a(Lc/t;)Lc/aa$a;

    move-result-object v0

    iget-object v2, p0, Le/k;->b:Ljava/lang/String;

    .line 221
    invoke-virtual {v0, v2, v1}, Lc/aa$a;->a(Ljava/lang/String;Lc/ab;)Lc/aa$a;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lc/aa$a;->a()Lc/aa;

    move-result-object v0

    return-object v0

    .line 192
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/k;->c:Lc/t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/k;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Lc/ab;)V
    .locals 0

    .line 180
    iput-object p1, p0, Le/k;->k:Lc/ab;

    return-void
.end method

.method a(Lc/s;Lc/ab;)V
    .locals 1

    .line 172
    iget-object v0, p0, Le/k;->i:Lc/w$a;

    invoke-virtual {v0, p1, p2}, Lc/w$a;->a(Lc/s;Lc/ab;)Lc/w$a;

    return-void
.end method

.method a(Lc/w$b;)V
    .locals 1

    .line 176
    iget-object v0, p0, Le/k;->i:Lc/w$a;

    invoke-virtual {v0, p1}, Lc/w$a;->a(Lc/w$b;)Lc/w$a;

    return-void
.end method

.method a(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/k;->d:Ljava/lang/String;

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "@Url parameter is null."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Content-Type"

    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-static {p2}, Lc/v;->a(Ljava/lang/String;)Lc/v;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Le/k;->g:Lc/v;

    goto :goto_0

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 84
    :cond_1
    iget-object v0, p0, Le/k;->f:Lc/aa$a;

    invoke-virtual {v0, p1, p2}, Lc/aa$a;->b(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;

    :goto_0
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 89
    iget-object v0, p0, Le/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Le/k;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/k;->d:Ljava/lang/String;

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 146
    iget-object v0, p0, Le/k;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Le/k;->c:Lc/t;

    invoke-virtual {v1, v0}, Lc/t;->d(Ljava/lang/String;)Lc/t$a;

    move-result-object v0

    iput-object v0, p0, Le/k;->e:Lc/t$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Le/k;->d:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Malformed URL. Base: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Le/k;->c:Lc/t;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Le/k;->d:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 157
    iget-object p3, p0, Le/k;->e:Lc/t$a;

    invoke-virtual {p3, p1, p2}, Lc/t$a;->b(Ljava/lang/String;Ljava/lang/String;)Lc/t$a;

    goto :goto_1

    .line 159
    :cond_2
    iget-object p3, p0, Le/k;->e:Lc/t$a;

    invoke-virtual {p3, p1, p2}, Lc/t$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/t$a;

    :goto_1
    return-void
.end method

.method c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 165
    iget-object p3, p0, Le/k;->j:Lc/q$a;

    invoke-virtual {p3, p1, p2}, Lc/q$a;->b(Ljava/lang/String;Ljava/lang/String;)Lc/q$a;

    goto :goto_0

    .line 167
    :cond_0
    iget-object p3, p0, Le/k;->j:Lc/q$a;

    invoke-virtual {p3, p1, p2}, Lc/q$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/q$a;

    :goto_0
    return-void
.end method
