.class public Lc/a/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lc/a/f/e;

.field private static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    invoke-static {}, Lc/a/f/e;->a()Lc/a/f/e;

    move-result-object v0

    sput-object v0, Lc/a/f/e;->a:Lc/a/f/e;

    .line 76
    const-class v0, Lc/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lc/a/f/e;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lc/a/f/e;
    .locals 1

    .line 152
    invoke-static {}, Lc/a/f/a;->a()Lc/a/f/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 158
    :cond_0
    invoke-static {}, Lc/a/f/b;->a()Lc/a/f/b;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 164
    :cond_1
    invoke-static {}, Lc/a/f/c;->a()Lc/a/f/e;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 171
    :cond_2
    new-instance v0, Lc/a/f/e;

    invoke-direct {v0}, Lc/a/f/e;-><init>()V

    return-object v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/y;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 139
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/y;

    .line 140
    sget-object v4, Lc/y;->a:Lc/y;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    invoke-virtual {v3}, Lc/y;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b()Lc/a/f/e;
    .locals 1

    .line 79
    sget-object v0, Lc/a/f/e;->a:Lc/a/f/e;

    return-object v0
.end method

.method static b(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/y;",
            ">;)[B"
        }
    .end annotation

    .line 179
    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    .line 180
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 181
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/y;

    .line 182
    sget-object v4, Lc/y;->a:Lc/y;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 183
    :cond_0
    invoke-virtual {v3}, Lc/y;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ld/c;->b(I)Ld/c;

    .line 184
    invoke-virtual {v3}, Lc/y;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ld/c;->a(Ljava/lang/String;)Ld/c;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {v0}, Ld/c;->s()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/X509TrustManager;)Lc/a/g/b;
    .locals 1

    .line 147
    new-instance v0, Lc/a/g/a;

    invoke-static {p1}, Lc/a/g/e;->a(Ljavax/net/ssl/X509TrustManager;)Lc/a/g/e;

    move-result-object p1

    invoke-direct {v0, p1}, Lc/a/g/a;-><init>(Lc/a/g/e;)V

    return-object v0
.end method

.method public a(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 128
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 129
    :goto_0
    sget-object v0, Lc/a/f/e;->b:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/y;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method
