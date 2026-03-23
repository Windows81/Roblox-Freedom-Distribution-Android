.class public final Lc/w;
.super Lc/ab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/w$a;,
        Lc/w$b;
    }
.end annotation


# static fields
.field public static final a:Lc/v;

.field public static final b:Lc/v;

.field public static final c:Lc/v;

.field public static final d:Lc/v;

.field public static final e:Lc/v;

.field private static final f:[B

.field private static final g:[B

.field private static final h:[B


# instance fields
.field private final i:Ld/f;

.field private final j:Lc/v;

.field private final k:Lc/v;

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/w$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "multipart/mixed"

    .line 34
    invoke-static {v0}, Lc/v;->a(Ljava/lang/String;)Lc/v;

    move-result-object v0

    sput-object v0, Lc/w;->a:Lc/v;

    const-string v0, "multipart/alternative"

    .line 41
    invoke-static {v0}, Lc/v;->a(Ljava/lang/String;)Lc/v;

    move-result-object v0

    sput-object v0, Lc/w;->b:Lc/v;

    const-string v0, "multipart/digest"

    .line 48
    invoke-static {v0}, Lc/v;->a(Ljava/lang/String;)Lc/v;

    move-result-object v0

    sput-object v0, Lc/w;->c:Lc/v;

    const-string v0, "multipart/parallel"

    .line 54
    invoke-static {v0}, Lc/v;->a(Ljava/lang/String;)Lc/v;

    move-result-object v0

    sput-object v0, Lc/w;->d:Lc/v;

    const-string v0, "multipart/form-data"

    .line 61
    invoke-static {v0}, Lc/v;->a(Ljava/lang/String;)Lc/v;

    move-result-object v0

    sput-object v0, Lc/w;->e:Lc/v;

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 63
    fill-array-data v1, :array_0

    sput-object v1, Lc/w;->f:[B

    new-array v1, v0, [B

    .line 64
    fill-array-data v1, :array_1

    sput-object v1, Lc/w;->g:[B

    new-array v0, v0, [B

    .line 65
    fill-array-data v0, :array_2

    sput-object v0, Lc/w;->h:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Ld/f;Lc/v;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/f;",
            "Lc/v;",
            "Ljava/util/List<",
            "Lc/w$b;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lc/ab;-><init>()V

    const-wide/16 v0, -0x1

    .line 71
    iput-wide v0, p0, Lc/w;->m:J

    .line 74
    iput-object p1, p0, Lc/w;->i:Ld/f;

    .line 75
    iput-object p2, p0, Lc/w;->j:Lc/v;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ld/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lc/v;->a(Ljava/lang/String;)Lc/v;

    move-result-object p1

    iput-object p1, p0, Lc/w;->k:Lc/v;

    .line 77
    invoke-static {p3}, Lc/a/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lc/w;->l:Ljava/util/List;

    return-void
.end method

.method private a(Ld/d;Z)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 127
    new-instance p1, Ld/c;

    invoke-direct {p1}, Ld/c;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    iget-object v1, p0, Lc/w;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_6

    .line 131
    iget-object v6, p0, Lc/w;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/w$b;

    .line 132
    invoke-static {v6}, Lc/w$b;->a(Lc/w$b;)Lc/s;

    move-result-object v7

    .line 133
    invoke-static {v6}, Lc/w$b;->b(Lc/w$b;)Lc/ab;

    move-result-object v6

    .line 135
    sget-object v8, Lc/w;->h:[B

    invoke-interface {p1, v8}, Ld/d;->c([B)Ld/d;

    .line 136
    iget-object v8, p0, Lc/w;->i:Ld/f;

    invoke-interface {p1, v8}, Ld/d;->b(Ld/f;)Ld/d;

    .line 137
    sget-object v8, Lc/w;->g:[B

    invoke-interface {p1, v8}, Ld/d;->c([B)Ld/d;

    if-eqz v7, :cond_1

    .line 140
    invoke-virtual {v7}, Lc/s;->a()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_1

    .line 141
    invoke-virtual {v7, v9}, Lc/s;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Ld/d;->b(Ljava/lang/String;)Ld/d;

    move-result-object v10

    sget-object v11, Lc/w;->f:[B

    .line 142
    invoke-interface {v10, v11}, Ld/d;->c([B)Ld/d;

    move-result-object v10

    .line 143
    invoke-virtual {v7, v9}, Lc/s;->b(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ld/d;->b(Ljava/lang/String;)Ld/d;

    move-result-object v10

    sget-object v11, Lc/w;->g:[B

    .line 144
    invoke-interface {v10, v11}, Ld/d;->c([B)Ld/d;

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 148
    :cond_1
    invoke-virtual {v6}, Lc/ab;->a()Lc/v;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    .line 150
    invoke-interface {p1, v8}, Ld/d;->b(Ljava/lang/String;)Ld/d;

    move-result-object v8

    .line 151
    invoke-virtual {v7}, Lc/v;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Ld/d;->b(Ljava/lang/String;)Ld/d;

    move-result-object v7

    sget-object v8, Lc/w;->g:[B

    .line 152
    invoke-interface {v7, v8}, Ld/d;->c([B)Ld/d;

    .line 155
    :cond_2
    invoke-virtual {v6}, Lc/ab;->b()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    .line 157
    invoke-interface {p1, v9}, Ld/d;->b(Ljava/lang/String;)Ld/d;

    move-result-object v9

    .line 158
    invoke-interface {v9, v7, v8}, Ld/d;->l(J)Ld/d;

    move-result-object v9

    sget-object v10, Lc/w;->g:[B

    .line 159
    invoke-interface {v9, v10}, Ld/d;->c([B)Ld/d;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    .line 162
    invoke-virtual {v0}, Ld/c;->t()V

    return-wide v9

    .line 166
    :cond_4
    :goto_3
    sget-object v9, Lc/w;->g:[B

    invoke-interface {p1, v9}, Ld/d;->c([B)Ld/d;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    .line 171
    :cond_5
    invoke-virtual {v6, p1}, Lc/ab;->a(Ld/d;)V

    .line 174
    :goto_4
    sget-object v6, Lc/w;->g:[B

    invoke-interface {p1, v6}, Ld/d;->c([B)Ld/d;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 177
    :cond_6
    sget-object v1, Lc/w;->h:[B

    invoke-interface {p1, v1}, Ld/d;->c([B)Ld/d;

    .line 178
    iget-object v1, p0, Lc/w;->i:Ld/f;

    invoke-interface {p1, v1}, Ld/d;->b(Ld/f;)Ld/d;

    .line 179
    sget-object v1, Lc/w;->h:[B

    invoke-interface {p1, v1}, Ld/d;->c([B)Ld/d;

    .line 180
    sget-object v1, Lc/w;->g:[B

    invoke-interface {p1, v1}, Ld/d;->c([B)Ld/d;

    if-eqz p2, :cond_7

    .line 183
    invoke-virtual {v0}, Ld/c;->b()J

    move-result-wide p1

    add-long/2addr v3, p1

    .line 184
    invoke-virtual {v0}, Ld/c;->t()V

    :cond_7
    return-wide v3
.end method


# virtual methods
.method public a()Lc/v;
    .locals 1

    .line 103
    iget-object v0, p0, Lc/w;->k:Lc/v;

    return-object v0
.end method

.method public a(Ld/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lc/w;->a(Ld/d;Z)J

    return-void
.end method

.method public b()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-wide v0, p0, Lc/w;->m:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 109
    invoke-direct {p0, v0, v1}, Lc/w;->a(Ld/d;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lc/w;->m:J

    return-wide v0
.end method
