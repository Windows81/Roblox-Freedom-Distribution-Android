.class public final Lb/a/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/d/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/d/d$a;
    }
.end annotation


# static fields
.field private static final a:Lc/f;

.field private static final b:Lc/f;

.field private static final c:Lc/f;

.field private static final d:Lc/f;

.field private static final e:Lc/f;

.field private static final f:Lc/f;

.field private static final g:Lc/f;

.field private static final h:Lc/f;

.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/f;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m:Lb/w;

.field private final n:Lb/a/b/g;

.field private final o:Lb/a/c/d;

.field private p:Lb/a/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const-string v0, "connection"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->a:Lc/f;

    .line 56
    const-string v0, "host"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->b:Lc/f;

    .line 57
    const-string v0, "keep-alive"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->c:Lc/f;

    .line 58
    const-string v0, "proxy-connection"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->d:Lc/f;

    .line 59
    const-string v0, "transfer-encoding"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->e:Lc/f;

    .line 60
    const-string v0, "te"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->f:Lc/f;

    .line 61
    const-string v0, "encoding"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->g:Lc/f;

    .line 62
    const-string v0, "upgrade"

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->h:Lc/f;

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Lc/f;

    sget-object v1, Lb/a/d/d;->a:Lc/f;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/d/d;->b:Lc/f;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/d/d;->c:Lc/f;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/d/d;->d:Lc/f;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/d/d;->e:Lc/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lb/a/c/f;->b:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/c/f;->c:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/c/f;->d:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/c/f;->e:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/c/f;->f:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lb/a/c/f;->g:Lc/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->i:Ljava/util/List;

    .line 77
    const/4 v0, 0x5

    new-array v0, v0, [Lc/f;

    sget-object v1, Lb/a/d/d;->a:Lc/f;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/d/d;->b:Lc/f;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/d/d;->c:Lc/f;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/d/d;->d:Lc/f;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/d/d;->e:Lc/f;

    aput-object v1, v0, v7

    invoke-static {v0}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->j:Ljava/util/List;

    .line 85
    const/16 v0, 0xe

    new-array v0, v0, [Lc/f;

    sget-object v1, Lb/a/d/d;->a:Lc/f;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/d/d;->b:Lc/f;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/d/d;->c:Lc/f;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/d/d;->d:Lc/f;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/d/d;->f:Lc/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lb/a/d/d;->e:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/d/d;->g:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/d/d;->h:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lb/a/c/f;->b:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lb/a/c/f;->c:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lb/a/c/f;->d:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lb/a/c/f;->e:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lb/a/c/f;->f:Lc/f;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lb/a/c/f;->g:Lc/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->k:Ljava/util/List;

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [Lc/f;

    sget-object v1, Lb/a/d/d;->a:Lc/f;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/d/d;->b:Lc/f;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/d/d;->c:Lc/f;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/d/d;->d:Lc/f;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/d/d;->f:Lc/f;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lb/a/d/d;->e:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/d/d;->g:Lc/f;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lb/a/d/d;->h:Lc/f;

    aput-object v2, v0, v1

    invoke-static {v0}, Lb/a/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/a/d/d;->l:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lb/w;Lb/a/b/g;Lb/a/c/d;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lb/a/d/d;->m:Lb/w;

    .line 118
    iput-object p2, p0, Lb/a/d/d;->n:Lb/a/b/g;

    .line 119
    iput-object p3, p0, Lb/a/d/d;->o:Lb/a/c/d;

    .line 120
    return-void
.end method

.method static synthetic a(Lb/a/d/d;)Lb/a/b/g;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lb/a/d/d;->n:Lb/a/b/g;

    return-object v0
.end method

.method public static a(Ljava/util/List;)Lb/ab$a;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lb/a/c/f;",
            ">;)",
            "Lb/ab$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 214
    const/4 v2, 0x0

    .line 215
    const-string v1, "HTTP/1.1"

    .line 216
    new-instance v6, Lb/r$a;

    invoke-direct {v6}, Lb/r$a;-><init>()V

    .line 217
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    move v5, v3

    :goto_0
    if-ge v5, v7, :cond_5

    .line 218
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c/f;

    iget-object v8, v0, Lb/a/c/f;->h:Lc/f;

    .line 220
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c/f;

    iget-object v0, v0, Lb/a/c/f;->i:Lc/f;

    invoke-virtual {v0}, Lc/f;->a()Ljava/lang/String;

    move-result-object v9

    move-object v0, v1

    move v1, v3

    .line 221
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 222
    invoke-virtual {v9, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 223
    const/4 v10, -0x1

    if-ne v4, v10, :cond_0

    .line 224
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    .line 226
    :cond_0
    invoke-virtual {v9, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 227
    sget-object v10, Lb/a/c/f;->a:Lc/f;

    invoke-virtual {v8, v10}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 234
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v12, v2

    move-object v2, v1

    move v1, v12

    .line 235
    goto :goto_1

    .line 229
    :cond_1
    sget-object v10, Lb/a/c/f;->g:Lc/f;

    invoke-virtual {v8, v10}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, v1

    move-object v1, v2

    .line 230
    goto :goto_2

    .line 231
    :cond_2
    sget-object v10, Lb/a/d/d;->j:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 232
    sget-object v10, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v8}, Lc/f;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11, v1}, Lb/a/a;->a(Lb/r$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v1, v2

    goto :goto_2

    .line 217
    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v1, v0

    goto :goto_0

    .line 237
    :cond_5
    if-nez v2, :cond_6

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/d/m;->a(Ljava/lang/String;)Lb/a/d/m;

    move-result-object v0

    .line 240
    new-instance v1, Lb/ab$a;

    invoke-direct {v1}, Lb/ab$a;-><init>()V

    sget-object v2, Lb/x;->c:Lb/x;

    .line 241
    invoke-virtual {v1, v2}, Lb/ab$a;->a(Lb/x;)Lb/ab$a;

    move-result-object v1

    iget v2, v0, Lb/a/d/m;->b:I

    .line 242
    invoke-virtual {v1, v2}, Lb/ab$a;->a(I)Lb/ab$a;

    move-result-object v1

    iget-object v0, v0, Lb/a/d/m;->c:Ljava/lang/String;

    .line 243
    invoke-virtual {v1, v0}, Lb/ab$a;->a(Ljava/lang/String;)Lb/ab$a;

    move-result-object v0

    .line 244
    invoke-virtual {v6}, Lb/r$a;->a()Lb/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/ab$a;->a(Lb/r;)Lb/ab$a;

    move-result-object v0

    .line 240
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/util/List;)Lb/ab$a;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lb/a/c/f;",
            ">;)",
            "Lb/ab$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 251
    new-instance v3, Lb/r$a;

    invoke-direct {v3}, Lb/r$a;-><init>()V

    .line 252
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 253
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c/f;

    iget-object v5, v0, Lb/a/c/f;->h:Lc/f;

    .line 255
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c/f;

    iget-object v0, v0, Lb/a/c/f;->i:Lc/f;

    invoke-virtual {v0}, Lc/f;->a()Ljava/lang/String;

    move-result-object v0

    .line 256
    sget-object v6, Lb/a/c/f;->a:Lc/f;

    invoke-virtual {v5, v6}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 252
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 258
    :cond_0
    sget-object v6, Lb/a/d/d;->l:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 259
    sget-object v6, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v5}, Lc/f;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v3, v5, v0}, Lb/a/a;->a(Lb/r$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 262
    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Expected \':status\' header not present"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/d/m;->a(Ljava/lang/String;)Lb/a/d/m;

    move-result-object v0

    .line 265
    new-instance v1, Lb/ab$a;

    invoke-direct {v1}, Lb/ab$a;-><init>()V

    sget-object v2, Lb/x;->d:Lb/x;

    .line 266
    invoke-virtual {v1, v2}, Lb/ab$a;->a(Lb/x;)Lb/ab$a;

    move-result-object v1

    iget v2, v0, Lb/a/d/m;->b:I

    .line 267
    invoke-virtual {v1, v2}, Lb/ab$a;->a(I)Lb/ab$a;

    move-result-object v1

    iget-object v0, v0, Lb/a/d/m;->c:Ljava/lang/String;

    .line 268
    invoke-virtual {v1, v0}, Lb/ab$a;->a(Ljava/lang/String;)Lb/ab$a;

    move-result-object v0

    .line 269
    invoke-virtual {v3}, Lb/r$a;->a()Lb/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/ab$a;->a(Lb/r;)Lb/ab$a;

    move-result-object v0

    .line 265
    return-object v0
.end method

.method public static b(Lb/z;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/z;",
            ")",
            "Ljava/util/List",
            "<",
            "Lb/a/c/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p0}, Lb/z;->c()Lb/r;

    move-result-object v4

    .line 156
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lb/r;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    new-instance v0, Lb/a/c/f;

    sget-object v1, Lb/a/c/f;->b:Lc/f;

    invoke-virtual {p0}, Lb/z;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lb/a/c/f;

    sget-object v1, Lb/a/c/f;->c:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v3

    invoke-static {v3}, Lb/a/d/k;->a(Lb/s;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v0, Lb/a/c/f;

    sget-object v1, Lb/a/c/f;->g:Lc/f;

    const-string v3, "HTTP/1.1"

    invoke-direct {v0, v1, v3}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v0, Lb/a/c/f;

    sget-object v1, Lb/a/c/f;->f:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v3

    invoke-static {v3, v2}, Lb/a/c;->a(Lb/s;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lb/a/c/f;

    sget-object v1, Lb/a/c/f;->d:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v3

    invoke-virtual {v3}, Lb/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v6, Ljava/util/LinkedHashSet;

    invoke-direct {v6}, Ljava/util/LinkedHashSet;-><init>()V

    .line 164
    invoke-virtual {v4}, Lb/r;->a()I

    move-result v7

    move v3, v2

    :goto_0
    if-ge v3, v7, :cond_4

    .line 166
    invoke-virtual {v4, v3}, Lb/r;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v8

    .line 169
    sget-object v0, Lb/a/d/d;->i:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v4, v3}, Lb/r;->b(I)Ljava/lang/String;

    move-result-object v9

    .line 173
    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    new-instance v0, Lb/a/c/f;

    invoke-direct {v0, v8, v9}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v1, v2

    .line 179
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 180
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c/f;

    iget-object v0, v0, Lb/a/c/f;->h:Lc/f;

    invoke-virtual {v0, v8}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/c/f;

    iget-object v0, v0, Lb/a/c/f;->i:Lc/f;

    invoke-virtual {v0}, Lc/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lb/a/d/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v9, Lb/a/c/f;

    invoke-direct {v9, v8, v0}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v5, v1, v9}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 179
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 187
    :cond_4
    return-object v5
.end method

.method public static c(Lb/z;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/z;",
            ")",
            "Ljava/util/List",
            "<",
            "Lb/a/c/f;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0}, Lb/z;->c()Lb/r;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lb/r;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    new-instance v3, Lb/a/c/f;

    sget-object v4, Lb/a/c/f;->b:Lc/f;

    invoke-virtual {p0}, Lb/z;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v3, Lb/a/c/f;

    sget-object v4, Lb/a/c/f;->c:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v5

    invoke-static {v5}, Lb/a/d/k;->a(Lb/s;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v3, Lb/a/c/f;

    sget-object v4, Lb/a/c/f;->e:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v5

    invoke-static {v5, v0}, Lb/a/c;->a(Lb/s;Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance v3, Lb/a/c/f;

    sget-object v4, Lb/a/c/f;->d:Lc/f;

    invoke-virtual {p0}, Lb/z;->a()Lb/s;

    move-result-object v5

    invoke-virtual {v5}, Lb/s;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    invoke-virtual {v1}, Lb/r;->a()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    .line 204
    invoke-virtual {v1, v0}, Lb/r;->a(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc/f;->a(Ljava/lang/String;)Lc/f;

    move-result-object v4

    .line 205
    sget-object v5, Lb/a/d/d;->k:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    new-instance v5, Lb/a/c/f;

    invoke-virtual {v1, v0}, Lb/r;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lb/a/c/f;-><init>(Lc/f;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :cond_1
    return-object v2
.end method


# virtual methods
.method public a(Lb/ab;)Lb/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    new-instance v0, Lb/a/d/d$a;

    iget-object v1, p0, Lb/a/d/d;->p:Lb/a/c/e;

    invoke-virtual {v1}, Lb/a/c/e;->g()Lc/s;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lb/a/d/d$a;-><init>(Lb/a/d/d;Lc/s;)V

    .line 274
    new-instance v1, Lb/a/d/j;

    invoke-virtual {p1}, Lb/ab;->f()Lb/r;

    move-result-object v2

    invoke-static {v0}, Lc/l;->a(Lc/s;)Lc/e;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lb/a/d/j;-><init>(Lb/r;Lc/e;)V

    return-object v1
.end method

.method public a(Lb/z;J)Lc/r;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lb/a/d/d;->p:Lb/a/c/e;

    invoke-virtual {v0}, Lb/a/c/e;->h()Lc/r;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lb/a/d/d;->p:Lb/a/c/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/a/d/d;->p:Lb/a/c/e;

    sget-object v1, Lb/a/c/a;->l:Lb/a/c/a;

    invoke-virtual {v0, v1}, Lb/a/c/e;->b(Lb/a/c/a;)V

    .line 279
    :cond_0
    return-void
.end method

.method public a(Lb/z;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lb/a/d/d;->p:Lb/a/c/e;

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p1}, Lb/z;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/d/g;->c(Ljava/lang/String;)Z

    move-result v1

    .line 130
    iget-object v0, p0, Lb/a/d/d;->o:Lb/a/c/d;

    invoke-virtual {v0}, Lb/a/c/d;->a()Lb/x;

    move-result-object v0

    sget-object v2, Lb/x;->d:Lb/x;

    if-ne v0, v2, :cond_1

    .line 131
    invoke-static {p1}, Lb/a/d/d;->c(Lb/z;)Ljava/util/List;

    move-result-object v0

    .line 133
    :goto_1
    const/4 v2, 0x1

    .line 134
    iget-object v3, p0, Lb/a/d/d;->o:Lb/a/c/d;

    invoke-virtual {v3, v0, v1, v2}, Lb/a/c/d;->a(Ljava/util/List;ZZ)Lb/a/c/e;

    move-result-object v0

    iput-object v0, p0, Lb/a/d/d;->p:Lb/a/c/e;

    .line 135
    iget-object v0, p0, Lb/a/d/d;->p:Lb/a/c/e;

    invoke-virtual {v0}, Lb/a/c/e;->e()Lc/t;

    move-result-object v0

    iget-object v1, p0, Lb/a/d/d;->m:Lb/w;

    invoke-virtual {v1}, Lb/w;->b()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lc/t;->a(JLjava/util/concurrent/TimeUnit;)Lc/t;

    .line 136
    iget-object v0, p0, Lb/a/d/d;->p:Lb/a/c/e;

    invoke-virtual {v0}, Lb/a/c/e;->f()Lc/t;

    move-result-object v0

    iget-object v1, p0, Lb/a/d/d;->m:Lb/w;

    invoke-virtual {v1}, Lb/w;->c()I

    move-result v1

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lc/t;->a(JLjava/util/concurrent/TimeUnit;)Lc/t;

    goto :goto_0

    .line 132
    :cond_1
    invoke-static {p1}, Lb/a/d/d;->b(Lb/z;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public b()Lb/ab$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lb/a/d/d;->o:Lb/a/c/d;

    invoke-virtual {v0}, Lb/a/c/d;->a()Lb/x;

    move-result-object v0

    sget-object v1, Lb/x;->d:Lb/x;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lb/a/d/d;->p:Lb/a/c/e;

    .line 145
    invoke-virtual {v0}, Lb/a/c/e;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lb/a/d/d;->b(Ljava/util/List;)Lb/ab$a;

    move-result-object v0

    .line 144
    :goto_0
    return-object v0

    .line 145
    :cond_0
    iget-object v0, p0, Lb/a/d/d;->p:Lb/a/c/e;

    .line 146
    invoke-virtual {v0}, Lb/a/c/e;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lb/a/d/d;->a(Ljava/util/List;)Lb/ab$a;

    move-result-object v0

    goto :goto_0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lb/a/d/d;->p:Lb/a/c/e;

    invoke-virtual {v0}, Lb/a/c/e;->h()Lc/r;

    move-result-object v0

    invoke-interface {v0}, Lc/r;->close()V

    .line 141
    return-void
.end method
