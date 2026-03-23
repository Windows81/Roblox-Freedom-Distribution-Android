.class public final Lc/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a$b;,
        Lc/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Lc/b/a$b;

.field private volatile c:Lc/b/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 48
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lc/b/a;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 118
    sget-object v0, Lc/b/a$b;->b:Lc/b/a$b;

    invoke-direct {p0, v0}, Lc/b/a;-><init>(Lc/b/a$b;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a$b;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    sget-object v0, Lc/b/a$a;->a:Lc/b/a$a;

    iput-object v0, p0, Lc/b/a;->c:Lc/b/a$a;

    .line 122
    iput-object p1, p0, Lc/b/a;->b:Lc/b/a$b;

    return-void
.end method

.method private a(Lc/s;)Z
    .locals 1

    const-string v0, "Content-Encoding"

    .line 298
    invoke-virtual {p1, v0}, Lc/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "identity"

    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static a(Ld/c;)Z
    .locals 8

    const/4 v0, 0x0

    .line 279
    :try_start_0
    new-instance v7, Ld/c;

    invoke-direct {v7}, Ld/c;-><init>()V

    .line 280
    invoke-virtual {p0}, Ld/c;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    invoke-virtual {p0}, Ld/c;->b()J

    move-result-wide v1

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    .line 281
    invoke-virtual/range {v1 .. v6}, Ld/c;->a(Ld/c;JJ)Ld/c;

    const/4 p0, 0x0

    :goto_1
    const/16 v1, 0x10

    if-ge p0, v1, :cond_3

    .line 283
    invoke-virtual {v7}, Ld/c;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 286
    :cond_1
    invoke-virtual {v7}, Ld/c;->r()I

    move-result v1

    .line 287
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method


# virtual methods
.method public a(Lc/u$a;)Lc/ac;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 141
    iget-object v2, v1, Lc/b/a;->c:Lc/b/a$a;

    .line 143
    invoke-interface/range {p1 .. p1}, Lc/u$a;->a()Lc/aa;

    move-result-object v3

    .line 144
    sget-object v4, Lc/b/a$a;->a:Lc/b/a$a;

    if-ne v2, v4, :cond_0

    .line 145
    invoke-interface {v0, v3}, Lc/u$a;->a(Lc/aa;)Lc/ac;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    sget-object v4, Lc/b/a$a;->d:Lc/b/a$a;

    const/4 v5, 0x1

    if-ne v2, v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 149
    sget-object v7, Lc/b/a$a;->c:Lc/b/a$a;

    if-ne v2, v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v2, 0x1

    .line 151
    :goto_2
    invoke-virtual {v3}, Lc/aa;->d()Lc/ab;

    move-result-object v7

    if-eqz v7, :cond_4

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 154
    :goto_3
    invoke-interface/range {p1 .. p1}, Lc/u$a;->b()Lc/i;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 155
    invoke-interface {v8}, Lc/i;->b()Lc/y;

    move-result-object v8

    goto :goto_4

    :cond_5
    sget-object v8, Lc/y;->b:Lc/y;

    .line 156
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "--> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/aa;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/aa;->a()Lc/t;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "-byte body)"

    const-string v11, " ("

    if-nez v2, :cond_6

    if-eqz v5, :cond_6

    .line 158
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lc/ab;->b()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 160
    :cond_6
    iget-object v12, v1, Lc/b/a;->b:Lc/b/a$b;

    invoke-interface {v12, v8}, Lc/b/a$b;->a(Ljava/lang/String;)V

    const-string v8, "-byte body omitted)"

    const-string v12, ": "

    const-string v15, ""

    if-eqz v2, :cond_10

    if-eqz v5, :cond_8

    .line 166
    invoke-virtual {v7}, Lc/ab;->a()Lc/v;

    move-result-object v16

    if-eqz v16, :cond_7

    .line 167
    iget-object v6, v1, Lc/b/a;->b:Lc/b/a$b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Type: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lc/ab;->a()Lc/v;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lc/b/a$b;->a(Ljava/lang/String;)V

    .line 169
    :cond_7
    invoke-virtual {v7}, Lc/ab;->b()J

    move-result-wide v13

    const-wide/16 v17, -0x1

    cmp-long v6, v13, v17

    if-eqz v6, :cond_8

    .line 170
    iget-object v6, v1, Lc/b/a;->b:Lc/b/a$b;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Content-Length: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lc/ab;->b()J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10}, Lc/b/a$b;->a(Ljava/lang/String;)V

    .line 174
    :cond_8
    invoke-virtual {v3}, Lc/aa;->c()Lc/s;

    move-result-object v6

    .line 175
    invoke-virtual {v6}, Lc/s;->a()I

    move-result v10

    const/4 v13, 0x0

    :goto_5
    if-ge v13, v10, :cond_a

    .line 176
    invoke-virtual {v6, v13}, Lc/s;->a(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v19, v10

    const-string v10, "Content-Type"

    .line 178
    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "Content-Length"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 179
    iget-object v10, v1, Lc/b/a;->b:Lc/b/a$b;

    move/from16 v20, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Lc/s;->b(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Lc/b/a$b;->a(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move/from16 v20, v2

    :goto_6
    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v19

    move/from16 v2, v20

    goto :goto_5

    :cond_a
    move/from16 v20, v2

    const-string v2, "--> END "

    if-eqz v4, :cond_f

    if-nez v5, :cond_b

    goto/16 :goto_7

    .line 185
    :cond_b
    invoke-virtual {v3}, Lc/aa;->c()Lc/s;

    move-result-object v5

    invoke-direct {v1, v5}, Lc/b/a;->a(Lc/s;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 186
    iget-object v5, v1, Lc/b/a;->b:Lc/b/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/aa;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (encoded body omitted)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lc/b/a$b;->a(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 188
    :cond_c
    new-instance v5, Ld/c;

    invoke-direct {v5}, Ld/c;-><init>()V

    .line 189
    invoke-virtual {v7, v5}, Lc/ab;->a(Ld/d;)V

    .line 191
    sget-object v6, Lc/b/a;->a:Ljava/nio/charset/Charset;

    .line 192
    invoke-virtual {v7}, Lc/ab;->a()Lc/v;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 194
    sget-object v6, Lc/b/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v6}, Lc/v;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 197
    :cond_d
    iget-object v10, v1, Lc/b/a;->b:Lc/b/a$b;

    invoke-interface {v10, v15}, Lc/b/a$b;->a(Ljava/lang/String;)V

    .line 198
    invoke-static {v5}, Lc/b/a;->a(Ld/c;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 199
    iget-object v10, v1, Lc/b/a;->b:Lc/b/a$b;

    invoke-virtual {v5, v6}, Ld/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Lc/b/a$b;->a(Ljava/lang/String;)V

    .line 200
    iget-object v5, v1, Lc/b/a;->b:Lc/b/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/aa;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v7}, Lc/ab;->b()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-interface {v5, v2}, Lc/b/a$b;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 203
    :cond_e
    iget-object v5, v1, Lc/b/a;->b:Lc/b/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/aa;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (binary "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v7}, Lc/ab;->b()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-interface {v5, v2}, Lc/b/a$b;->a(Ljava/lang/String;)V

    goto :goto_8

    .line 184
    :cond_f
    :goto_7
    iget-object v5, v1, Lc/b/a;->b:Lc/b/a$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/aa;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lc/b/a$b;->a(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    move/from16 v20, v2

    .line 209
    :goto_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 212
    :try_start_0
    invoke-interface {v0, v3}, Lc/u$a;->a(Lc/aa;)Lc/ac;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 217
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long/2addr v13, v5

    invoke-virtual {v2, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 219
    invoke-virtual {v0}, Lc/ac;->g()Lc/ad;

    move-result-object v5

    .line 220
    invoke-virtual {v5}, Lc/ad;->b()J

    move-result-wide v6

    const-wide/16 v13, -0x1

    cmp-long v10, v6, v13

    if-eqz v10, :cond_11

    .line 221
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-byte"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_11
    const-string v10, "unknown-length"

    .line 222
    :goto_9
    iget-object v13, v1, Lc/b/a;->b:Lc/b/a$b;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v9

    const-string v9, "<-- "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lc/ac;->b()I

    move-result v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-wide/from16 v18, v6

    invoke-virtual {v0}, Lc/ac;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Lc/ac;->a()Lc/aa;

    move-result-object v6

    invoke-virtual {v6}, Lc/aa;->a()Lc/t;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v20, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " body"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_12
    move-object v2, v15

    :goto_a
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-interface {v13, v2}, Lc/b/a$b;->a(Ljava/lang/String;)V

    if-eqz v20, :cond_1a

    .line 227
    invoke-virtual {v0}, Lc/ac;->f()Lc/s;

    move-result-object v2

    .line 228
    invoke-virtual {v2}, Lc/s;->a()I

    move-result v3

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v3, :cond_13

    .line 229
    iget-object v7, v1, Lc/b/a;->b:Lc/b/a$b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Lc/s;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Lc/s;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Lc/b/a$b;->a(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_13
    const-string v2, "<-- END HTTP"

    if-eqz v4, :cond_19

    .line 232
    invoke-static {v0}, Lc/a/d/f;->b(Lc/ac;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_d

    .line 234
    :cond_14
    invoke-virtual {v0}, Lc/ac;->f()Lc/s;

    move-result-object v3

    invoke-direct {v1, v3}, Lc/b/a;->a(Lc/s;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 235
    iget-object v2, v1, Lc/b/a;->b:Lc/b/a$b;

    const-string v3, "<-- END HTTP (encoded body omitted)"

    invoke-interface {v2, v3}, Lc/b/a$b;->a(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 237
    :cond_15
    invoke-virtual {v5}, Lc/ad;->d()Ld/e;

    move-result-object v3

    const-wide v6, 0x7fffffffffffffffL

    .line 238
    invoke-interface {v3, v6, v7}, Ld/e;->b(J)Z

    .line 239
    invoke-interface {v3}, Ld/e;->c()Ld/c;

    move-result-object v3

    .line 241
    sget-object v4, Lc/b/a;->a:Ljava/nio/charset/Charset;

    .line 242
    invoke-virtual {v5}, Lc/ad;->a()Lc/v;

    move-result-object v5

    if-eqz v5, :cond_16

    .line 245
    :try_start_1
    sget-object v4, Lc/b/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v4}, Lc/v;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    .line 247
    :catch_0
    iget-object v3, v1, Lc/b/a;->b:Lc/b/a$b;

    invoke-interface {v3, v15}, Lc/b/a$b;->a(Ljava/lang/String;)V

    .line 248
    iget-object v3, v1, Lc/b/a;->b:Lc/b/a$b;

    const-string v4, "Couldn\'t decode the response body; charset is likely malformed."

    invoke-interface {v3, v4}, Lc/b/a$b;->a(Ljava/lang/String;)V

    .line 249
    iget-object v3, v1, Lc/b/a;->b:Lc/b/a$b;

    invoke-interface {v3, v2}, Lc/b/a$b;->a(Ljava/lang/String;)V

    return-object v0

    .line 255
    :cond_16
    :goto_c
    invoke-static {v3}, Lc/b/a;->a(Ld/c;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 256
    iget-object v2, v1, Lc/b/a;->b:Lc/b/a$b;

    invoke-interface {v2, v15}, Lc/b/a$b;->a(Ljava/lang/String;)V

    .line 257
    iget-object v2, v1, Lc/b/a;->b:Lc/b/a$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- END HTTP (binary "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ld/c;->b()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/b/a$b;->a(Ljava/lang/String;)V

    return-object v0

    :cond_17
    const-wide/16 v5, 0x0

    cmp-long v2, v18, v5

    if-eqz v2, :cond_18

    .line 262
    iget-object v2, v1, Lc/b/a;->b:Lc/b/a$b;

    invoke-interface {v2, v15}, Lc/b/a$b;->a(Ljava/lang/String;)V

    .line 263
    iget-object v2, v1, Lc/b/a;->b:Lc/b/a$b;

    invoke-virtual {v3}, Ld/c;->u()Ld/c;

    move-result-object v5

    invoke-virtual {v5, v4}, Ld/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lc/b/a$b;->a(Ljava/lang/String;)V

    .line 266
    :cond_18
    iget-object v2, v1, Lc/b/a;->b:Lc/b/a$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<-- END HTTP ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ld/c;->b()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v3, v17

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/b/a$b;->a(Ljava/lang/String;)V

    goto :goto_e

    .line 233
    :cond_19
    :goto_d
    iget-object v3, v1, Lc/b/a;->b:Lc/b/a$b;

    invoke-interface {v3, v2}, Lc/b/a$b;->a(Ljava/lang/String;)V

    :cond_1a
    :goto_e
    return-object v0

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 214
    iget-object v0, v1, Lc/b/a;->b:Lc/b/a$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<-- HTTP FAILED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lc/b/a$b;->a(Ljava/lang/String;)V

    .line 215
    goto :goto_10

    :goto_f
    throw v2

    :goto_10
    goto :goto_f
.end method

.method public a(Lc/b/a$a;)Lc/b/a;
    .locals 1

    if-eqz p1, :cond_0

    .line 132
    iput-object p1, p0, Lc/b/a;->c:Lc/b/a$a;

    return-object p0

    .line 131
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "level == null. Use Level.NONE instead."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
