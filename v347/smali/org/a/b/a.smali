.class public abstract Lorg/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/a/b/a$a;,
        Lorg/a/b/a$b;
    }
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static final c:[B


# instance fields
.field protected d:Lorg/a/a$b;

.field protected e:Lorg/a/d/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x3e8

    sput v0, Lorg/a/b/a;->a:I

    .line 45
    const/16 v0, 0x40

    sput v0, Lorg/a/b/a;->b:I

    .line 49
    const-string v0, "<policy-file-request/>\u0000"

    invoke-static {v0}, Lorg/a/f/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/a/b/a;->c:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lorg/a/b/a;->d:Lorg/a/a$b;

    .line 54
    iput-object v0, p0, Lorg/a/b/a;->e:Lorg/a/d/d$a;

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 59
    const/16 v0, 0x30

    .line 60
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 63
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    const/16 v0, 0xa

    if-ne v1, v0, :cond_1

    .line 65
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 66
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object v0, v2

    .line 73
    :goto_1
    return-object v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 73
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/nio/ByteBuffer;Lorg/a/a$b;)Lorg/a/e/c;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/d;,
            Lorg/a/c/a;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 84
    invoke-static {p0}, Lorg/a/b/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lorg/a/c/a;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Lorg/a/c/a;-><init>(I)V

    throw v0

    .line 88
    :cond_0
    const-string v1, " "

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 89
    array-length v0, v2

    if-eq v0, v3, :cond_1

    .line 90
    new-instance v0, Lorg/a/c/d;

    invoke-direct {v0}, Lorg/a/c/d;-><init>()V

    throw v0

    .line 93
    :cond_1
    sget-object v0, Lorg/a/a$b;->a:Lorg/a/a$b;

    if-ne p1, v0, :cond_2

    .line 95
    new-instance v1, Lorg/a/e/e;

    invoke-direct {v1}, Lorg/a/e/e;-><init>()V

    move-object v0, v1

    .line 96
    check-cast v0, Lorg/a/e/i;

    .line 97
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v3

    invoke-interface {v0, v3}, Lorg/a/e/i;->a(S)V

    .line 98
    aget-object v2, v2, v6

    invoke-interface {v0, v2}, Lorg/a/e/i;->a(Ljava/lang/String;)V

    .line 106
    :goto_0
    invoke-static {p0}, Lorg/a/b/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 108
    const-string v2, ":"

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 109
    array-length v2, v0

    if-eq v2, v6, :cond_3

    .line 110
    new-instance v0, Lorg/a/c/d;

    const-string v1, "not an http header"

    invoke-direct {v0, v1}, Lorg/a/c/d;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_2
    new-instance v1, Lorg/a/e/d;

    invoke-direct {v1}, Lorg/a/e/d;-><init>()V

    .line 102
    aget-object v0, v2, v5

    invoke-interface {v1, v0}, Lorg/a/e/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v0, v0, v5

    const-string v3, "^ +"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {p0}, Lorg/a/b/a;->b(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 114
    :cond_4
    if-nez v0, :cond_5

    .line 115
    new-instance v0, Lorg/a/c/a;

    invoke-direct {v0}, Lorg/a/c/a;-><init>()V

    throw v0

    .line 116
    :cond_5
    return-object v1
.end method

.method public static b(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    invoke-static {p0}, Lorg/a/b/a;->a(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 78
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v1, v2, v0}, Lorg/a/f/b;->a([BII)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/e;,
            Lorg/a/c/b;
        }
    .end annotation

    .prologue
    .line 217
    if-gez p1, :cond_0

    .line 218
    new-instance v0, Lorg/a/c/b;

    const/16 v1, 0x3ea

    const-string v2, "Negative count"

    invoke-direct {v0, v1, v2}, Lorg/a/c/b;-><init>(ILjava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    return p1
.end method

.method public abstract a(Lorg/a/d/d;)Ljava/nio/ByteBuffer;
.end method

.method public abstract a(Ljava/lang/String;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/a/d/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/a/d/d;",
            ">;"
        }
    .end annotation
.end method

.method public a(Lorg/a/d/d$a;Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/d/d$a;",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lorg/a/d/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    sget-object v0, Lorg/a/d/d$a;->c:Lorg/a/d/d$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/a/d/d$a;->b:Lorg/a/d/d$a;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/a/d/d$a;->b:Lorg/a/d/d$a;

    if-eq p1, v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only Opcode.BINARY or  Opcode.TEXT are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/a/b/a;->e:Lorg/a/d/d$a;

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lorg/a/d/d$a;->a:Lorg/a/d/d$a;

    iput-object v0, p0, Lorg/a/b/a;->e:Lorg/a/d/d$a;

    .line 144
    :goto_0
    new-instance v0, Lorg/a/d/e;

    iget-object v1, p0, Lorg/a/b/a;->e:Lorg/a/d/d$a;

    invoke-direct {v0, v1}, Lorg/a/d/e;-><init>(Lorg/a/d/d$a;)V

    .line 146
    :try_start_0
    invoke-interface {v0, p2}, Lorg/a/d/c;->a(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Lorg/a/c/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    invoke-interface {v0, p3}, Lorg/a/d/c;->a(Z)V

    .line 151
    if-eqz p3, :cond_2

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/a/b/a;->e:Lorg/a/d/d$a;

    .line 156
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 141
    :cond_1
    iput-object p1, p0, Lorg/a/b/a;->e:Lorg/a/d/d$a;

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 154
    :cond_2
    iput-object p1, p0, Lorg/a/b/a;->e:Lorg/a/d/d$a;

    goto :goto_1
.end method

.method public a(Lorg/a/e/f;Lorg/a/a$b;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/e/f;",
            "Lorg/a/a$b;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/a/b/a;->a(Lorg/a/e/f;Lorg/a/a$b;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lorg/a/e/f;Lorg/a/a$b;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/e/f;",
            "Lorg/a/a$b;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x64

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 167
    instance-of v0, p1, Lorg/a/e/a;

    if-eqz v0, :cond_0

    .line 168
    const-string v0, "GET "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p1

    .line 169
    check-cast v0, Lorg/a/e/a;

    invoke-interface {v0}, Lorg/a/e/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    const-string v0, " HTTP/1.1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :goto_0
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-interface {p1}, Lorg/a/e/f;->b()Ljava/util/Iterator;

    move-result-object v2

    .line 178
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    invoke-interface {p1, v0}, Lorg/a/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 171
    :cond_0
    instance-of v0, p1, Lorg/a/e/h;

    if-eqz v0, :cond_1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP/1.1 101 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lorg/a/e/h;

    invoke-interface {v0}, Lorg/a/e/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unknow role"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_2
    const-string v0, "\r\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/a/f/b;->b(Ljava/lang/String;)[B

    move-result-object v2

    .line 189
    if-eqz p3, :cond_4

    invoke-interface {p1}, Lorg/a/e/f;->c()[B

    move-result-object v0

    move-object v1, v0

    .line 190
    :goto_2
    if-nez v1, :cond_5

    const/4 v0, 0x0

    :goto_3
    array-length v3, v2

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 192
    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 194
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 195
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 189
    :cond_4
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_2

    .line 190
    :cond_5
    array-length v0, v1

    goto :goto_3
.end method

.method public abstract a(Lorg/a/e/a;)Lorg/a/b/a$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/d;
        }
    .end annotation
.end method

.method public abstract a(Lorg/a/e/a;Lorg/a/e/h;)Lorg/a/b/a$b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/d;
        }
    .end annotation
.end method

.method public abstract a(Lorg/a/e/b;)Lorg/a/e/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/d;
        }
    .end annotation
.end method

.method public abstract a(Lorg/a/e/a;Lorg/a/e/i;)Lorg/a/e/c;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/d;
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public a(Lorg/a/a$b;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lorg/a/b/a;->d:Lorg/a/a$b;

    .line 224
    return-void
.end method

.method protected a(Lorg/a/e/f;)Z
    .locals 2

    .prologue
    .line 124
    const-string v0, "Upgrade"

    invoke-interface {p1, v0}, Lorg/a/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "websocket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lorg/a/e/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgrade"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract b()Lorg/a/b/a$a;
.end method

.method public abstract c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/a/d/d;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/b;
        }
    .end annotation
.end method

.method public abstract c()Lorg/a/b/a;
.end method

.method public d(Ljava/nio/ByteBuffer;)Lorg/a/e/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/a/c/d;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/a/b/a;->d:Lorg/a/a$b;

    invoke-static {p1, v0}, Lorg/a/b/a;->a(Ljava/nio/ByteBuffer;Lorg/a/a$b;)Lorg/a/e/c;

    move-result-object v0

    return-object v0
.end method
