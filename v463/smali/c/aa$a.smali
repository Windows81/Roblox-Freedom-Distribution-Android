.class public Lc/aa$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lc/t;

.field private b:Ljava/lang/String;

.field private c:Lc/s$a;

.field private d:Lc/ab;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    .line 106
    iput-object v0, p0, Lc/aa$a;->b:Ljava/lang/String;

    .line 107
    new-instance v0, Lc/s$a;

    invoke-direct {v0}, Lc/s$a;-><init>()V

    iput-object v0, p0, Lc/aa$a;->c:Lc/s$a;

    return-void
.end method

.method private constructor <init>(Lc/aa;)V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1}, Lc/aa;->a(Lc/aa;)Lc/t;

    move-result-object v0

    iput-object v0, p0, Lc/aa$a;->a:Lc/t;

    .line 112
    invoke-static {p1}, Lc/aa;->b(Lc/aa;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/aa$a;->b:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lc/aa;->c(Lc/aa;)Lc/ab;

    move-result-object v0

    iput-object v0, p0, Lc/aa$a;->d:Lc/ab;

    .line 114
    invoke-static {p1}, Lc/aa;->d(Lc/aa;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc/aa$a;->e:Ljava/lang/Object;

    .line 115
    invoke-static {p1}, Lc/aa;->e(Lc/aa;)Lc/s;

    move-result-object p1

    invoke-virtual {p1}, Lc/s;->b()Lc/s$a;

    move-result-object p1

    iput-object p1, p0, Lc/aa$a;->c:Lc/s$a;

    return-void
.end method

.method synthetic constructor <init>(Lc/aa;Lc/aa$1;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1}, Lc/aa$a;-><init>(Lc/aa;)V

    return-void
.end method

.method static synthetic a(Lc/aa$a;)Lc/t;
    .locals 0

    .line 98
    iget-object p0, p0, Lc/aa$a;->a:Lc/t;

    return-object p0
.end method

.method static synthetic b(Lc/aa$a;)Ljava/lang/String;
    .locals 0

    .line 98
    iget-object p0, p0, Lc/aa$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lc/aa$a;)Lc/s$a;
    .locals 0

    .line 98
    iget-object p0, p0, Lc/aa$a;->c:Lc/s$a;

    return-object p0
.end method

.method static synthetic d(Lc/aa$a;)Lc/ab;
    .locals 0

    .line 98
    iget-object p0, p0, Lc/aa$a;->d:Lc/ab;

    return-object p0
.end method

.method static synthetic e(Lc/aa$a;)Ljava/lang/Object;
    .locals 0

    .line 98
    iget-object p0, p0, Lc/aa$a;->e:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public a(Lc/ab;)Lc/aa$a;
    .locals 1

    const-string v0, "POST"

    .line 210
    invoke-virtual {p0, v0, p1}, Lc/aa$a;->a(Ljava/lang/String;Lc/ab;)Lc/aa$a;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/s;)Lc/aa$a;
    .locals 0

    .line 186
    invoke-virtual {p1}, Lc/s;->b()Lc/s$a;

    move-result-object p1

    iput-object p1, p0, Lc/aa$a;->c:Lc/s$a;

    return-object p0
.end method

.method public a(Lc/t;)Lc/aa$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 120
    iput-object p1, p0, Lc/aa$a;->a:Lc/t;

    return-object p0

    .line 119
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lc/aa$a;
    .locals 6

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v3, "ws:"

    move-object v0, p1

    .line 134
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    .line 136
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 140
    :cond_1
    :goto_0
    invoke-static {p1}, Lc/t;->e(Ljava/lang/String;)Lc/t;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {p0, v0}, Lc/aa$a;->a(Lc/t;)Lc/aa$a;

    move-result-object p1

    return-object p1

    .line 141
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Lc/ab;)Lc/aa$a;
    .locals 2

    if-eqz p1, :cond_5

    .line 231
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "method "

    if-eqz p2, :cond_1

    .line 232
    invoke-static {p1}, Lc/a/d/g;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must not have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-nez p2, :cond_3

    .line 235
    invoke-static {p1}, Lc/a/d/g;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 236
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must have a request body."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 238
    :cond_3
    :goto_1
    iput-object p1, p0, Lc/aa$a;->b:Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lc/aa$a;->d:Lc/ab;

    return-object p0

    .line 231
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method.length() == 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "method == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;
    .locals 1

    .line 163
    iget-object v0, p0, Lc/aa$a;->c:Lc/s$a;

    invoke-virtual {v0, p1, p2}, Lc/s$a;->c(Ljava/lang/String;Ljava/lang/String;)Lc/s$a;

    return-object p0
.end method

.method public a()Lc/aa;
    .locals 2

    .line 253
    iget-object v0, p0, Lc/aa$a;->a:Lc/t;

    if-eqz v0, :cond_0

    .line 254
    new-instance v0, Lc/aa;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/aa;-><init>(Lc/aa$a;Lc/aa$1;)V

    return-object v0

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lc/aa$a;
    .locals 1

    .line 180
    iget-object v0, p0, Lc/aa$a;->c:Lc/s$a;

    invoke-virtual {v0, p1}, Lc/s$a;->b(Ljava/lang/String;)Lc/s$a;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lc/aa$a;
    .locals 1

    .line 175
    iget-object v0, p0, Lc/aa$a;->c:Lc/s$a;

    invoke-virtual {v0, p1, p2}, Lc/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lc/s$a;

    return-object p0
.end method
