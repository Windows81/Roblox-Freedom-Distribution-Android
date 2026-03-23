.class public final Lb/a/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/d/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/d/c$f;,
        Lb/a/d/c$c;,
        Lb/a/d/c$e;,
        Lb/a/d/c$a;,
        Lb/a/d/c$b;,
        Lb/a/d/c$d;
    }
.end annotation


# instance fields
.field private final a:Lb/w;

.field private final b:Lb/a/b/g;

.field private final c:Lc/e;

.field private final d:Lc/d;

.field private e:I


# direct methods
.method public constructor <init>(Lb/w;Lb/a/b/g;Lc/e;Lc/d;)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lb/a/d/c;->e:I

    .line 84
    iput-object p1, p0, Lb/a/d/c;->a:Lb/w;

    .line 85
    iput-object p2, p0, Lb/a/d/c;->b:Lb/a/b/g;

    .line 86
    iput-object p3, p0, Lb/a/d/c;->c:Lc/e;

    .line 87
    iput-object p4, p0, Lb/a/d/c;->d:Lc/d;

    .line 88
    return-void
.end method

.method static synthetic a(Lb/a/d/c;I)I
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lb/a/d/c;->e:I

    return p1
.end method

.method static synthetic a(Lb/a/d/c;)Lc/d;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lb/a/d/c;->d:Lc/d;

    return-object v0
.end method

.method static synthetic a(Lb/a/d/c;Lc/i;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lb/a/d/c;->a(Lc/i;)V

    return-void
.end method

.method private a(Lc/i;)V
    .locals 2

    .prologue
    .line 255
    invoke-virtual {p1}, Lc/i;->a()Lc/t;

    move-result-object v0

    .line 256
    sget-object v1, Lc/t;->b:Lc/t;

    invoke-virtual {p1, v1}, Lc/i;->a(Lc/t;)Lc/i;

    .line 257
    invoke-virtual {v0}, Lc/t;->f()Lc/t;

    .line 258
    invoke-virtual {v0}, Lc/t;->A_()Lc/t;

    .line 259
    return-void
.end method

.method static synthetic b(Lb/a/d/c;)Lc/e;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lb/a/d/c;->c:Lc/e;

    return-object v0
.end method

.method private b(Lb/ab;)Lc/s;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Lb/a/d/f;->b(Lb/ab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lb/a/d/c;->b(J)Lc/s;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 140
    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lb/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Lb/ab;->a()Lb/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/z;->a()Lb/s;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/d/c;->a(Lb/s;)Lc/s;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p1}, Lb/a/d/f;->a(Lb/ab;)J

    move-result-wide v0

    .line 145
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p0, v0, v1}, Lb/a/d/c;->b(J)Lc/s;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Lb/a/d/c;->g()Lc/s;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lb/a/d/c;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lb/a/d/c;->e:I

    return v0
.end method

.method static synthetic d(Lb/a/d/c;)Lb/a/b/g;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lb/a/d/c;->b:Lb/a/b/g;

    return-object v0
.end method

.method static synthetic e(Lb/a/d/c;)Lb/w;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lb/a/d/c;->a:Lb/w;

    return-object v0
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
    .line 131
    invoke-direct {p0, p1}, Lb/a/d/c;->b(Lb/ab;)Lc/s;

    move-result-object v0

    .line 132
    new-instance v1, Lb/a/d/j;

    invoke-virtual {p1}, Lb/ab;->f()Lb/r;

    move-result-object v2

    invoke-static {v0}, Lc/l;->a(Lc/s;)Lc/e;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lb/a/d/j;-><init>(Lb/r;Lc/e;)V

    return-object v1
.end method

.method public a(J)Lc/r;
    .locals 3

    .prologue
    .line 224
    iget v0, p0, Lb/a/d/c;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lb/a/d/c;->e:I

    .line 226
    new-instance v0, Lb/a/d/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lb/a/d/c$d;-><init>(Lb/a/d/c;JLb/a/d/c$1;)V

    return-object v0
.end method

.method public a(Lb/z;J)Lc/r;
    .locals 2

    .prologue
    .line 91
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lb/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lb/a/d/c;->f()Lc/r;

    move-result-object v0

    .line 98
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p0, p2, p3}, Lb/a/d/c;->a(J)Lc/r;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lb/s;)Lc/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget v0, p0, Lb/a/d/c;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lb/a/d/c;->e:I

    .line 238
    new-instance v0, Lb/a/d/c$c;

    invoke-direct {v0, p0, p1}, Lb/a/d/c$c;-><init>(Lb/a/d/c;Lb/s;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lb/a/d/c;->b:Lb/a/b/g;

    invoke-virtual {v0}, Lb/a/b/g;->b()Lb/a/b/c;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/b/c;->c()V

    .line 108
    :cond_0
    return-void
.end method

.method public a(Lb/r;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget v0, p0, Lb/a/d/c;->e:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iget-object v0, p0, Lb/a/d/c;->d:Lc/d;

    invoke-interface {v0, p2}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p1}, Lb/r;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 169
    iget-object v2, p0, Lb/a/d/c;->d:Lc/d;

    invoke-virtual {p1, v0}, Lb/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v2

    const-string v3, ": "

    .line 170
    invoke-interface {v2, v3}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v2

    .line 171
    invoke-virtual {p1, v0}, Lb/r;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v2

    const-string v3, "\r\n"

    .line 172
    invoke-interface {v2, v3}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lb/a/d/c;->d:Lc/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    .line 175
    const/4 v0, 0x1

    iput v0, p0, Lb/a/d/c;->e:I

    .line 176
    return-void
.end method

.method public a(Lb/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lb/a/d/c;->b:Lb/a/b/g;

    .line 122
    invoke-virtual {v0}, Lb/a/b/g;->b()Lb/a/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/b/c;->a()Lb/ad;

    move-result-object v0

    invoke-virtual {v0}, Lb/ad;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 121
    invoke-static {p1, v0}, Lb/a/d/k;->a(Lb/z;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1}, Lb/z;->c()Lb/r;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lb/a/d/c;->a(Lb/r;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public b()Lb/ab$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lb/a/d/c;->d()Lb/ab$a;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lc/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Lb/a/d/c;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lb/a/d/c;->e:I

    .line 232
    new-instance v0, Lb/a/d/c$e;

    invoke-direct {v0, p0, p1, p2}, Lb/a/d/c$e;-><init>(Lb/a/d/c;J)V

    return-object v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lb/a/d/c;->d:Lc/d;

    invoke-interface {v0}, Lc/d;->flush()V

    .line 162
    return-void
.end method

.method public d()Lb/ab$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Lb/a/d/c;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lb/a/d/c;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/a/d/c;->c:Lc/e;

    invoke-interface {v0}, Lc/e;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/d/m;->a(Ljava/lang/String;)Lb/a/d/m;

    move-result-object v0

    .line 188
    new-instance v1, Lb/ab$a;

    invoke-direct {v1}, Lb/ab$a;-><init>()V

    iget-object v2, v0, Lb/a/d/m;->a:Lb/x;

    .line 189
    invoke-virtual {v1, v2}, Lb/ab$a;->a(Lb/x;)Lb/ab$a;

    move-result-object v1

    iget v2, v0, Lb/a/d/m;->b:I

    .line 190
    invoke-virtual {v1, v2}, Lb/ab$a;->a(I)Lb/ab$a;

    move-result-object v1

    iget-object v2, v0, Lb/a/d/m;->c:Ljava/lang/String;

    .line 191
    invoke-virtual {v1, v2}, Lb/ab$a;->a(Ljava/lang/String;)Lb/ab$a;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Lb/a/d/c;->e()Lb/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/ab$a;->a(Lb/r;)Lb/ab$a;

    move-result-object v1

    .line 194
    iget v0, v0, Lb/a/d/m;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    .line 195
    const/4 v0, 0x4

    iput v0, p0, Lb/a/d/c;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object v1

    .line 199
    :catch_0
    move-exception v0

    .line 201
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lb/a/d/c;->b:Lb/a/b/g;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw v1
.end method

.method public e()Lb/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lb/r$a;

    invoke-direct {v0}, Lb/r$a;-><init>()V

    .line 211
    :goto_0
    iget-object v1, p0, Lb/a/d/c;->c:Lc/e;

    invoke-interface {v1}, Lc/e;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    sget-object v2, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v2, v0, v1}, Lb/a/a;->a(Lb/r$a;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Lb/r$a;->a()Lb/r;

    move-result-object v0

    return-object v0
.end method

.method public f()Lc/r;
    .locals 3

    .prologue
    .line 218
    iget v0, p0, Lb/a/d/c;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lb/a/d/c;->e:I

    .line 220
    new-instance v0, Lb/a/d/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/d/c$b;-><init>(Lb/a/d/c;Lb/a/d/c$1;)V

    return-object v0
.end method

.method public g()Lc/s;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget v0, p0, Lb/a/d/c;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/d/c;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    iget-object v0, p0, Lb/a/d/c;->b:Lb/a/b/g;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lb/a/d/c;->e:I

    .line 245
    iget-object v0, p0, Lb/a/d/c;->b:Lb/a/b/g;

    invoke-virtual {v0}, Lb/a/b/g;->d()V

    .line 246
    new-instance v0, Lb/a/d/c$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/d/c$f;-><init>(Lb/a/d/c;Lb/a/d/c$1;)V

    return-object v0
.end method
