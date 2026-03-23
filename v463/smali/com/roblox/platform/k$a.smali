.class public Lcom/roblox/platform/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roblox/platform/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Landroid/graphics/Point;

.field c:Landroid/graphics/Point;

.field d:Landroid/graphics/Point;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Z

.field l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/roblox/platform/k$a;
    .locals 0

    .line 30
    iput p1, p0, Lcom/roblox/platform/k$a;->a:I

    return-object p0
.end method

.method public a(Landroid/graphics/Point;)Lcom/roblox/platform/k$a;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/roblox/platform/k$a;->b:Landroid/graphics/Point;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/roblox/platform/k$a;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/roblox/platform/k$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/roblox/platform/k$a;
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/roblox/platform/k$a;->k:Z

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 10

    .line 91
    iget-boolean v0, p0, Lcom/roblox/platform/k$a;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "Phone"

    goto :goto_0

    :cond_0
    const-string v0, "Tablet"

    .line 93
    :goto_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/roblox/platform/k$a;->j:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v6, p0, Lcom/roblox/platform/k$a;->h:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v3, v7

    iget-object v6, p0, Lcom/roblox/platform/k$a;->i:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v3, v8

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const-string v4, "%s RobloxApp/%s (%s; %s)"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 95
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/16 v4, 0xd

    new-array v4, v4, [Ljava/lang/Object;

    iget v9, p0, Lcom/roblox/platform/k$a;->a:I

    .line 96
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v4, v5

    iget-object v5, p0, Lcom/roblox/platform/k$a;->b:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/roblox/platform/k$a;->b:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 98
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    iget-object v5, p0, Lcom/roblox/platform/k$a;->c:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 99
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/roblox/platform/k$a;->c:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x5

    iget-object v5, p0, Lcom/roblox/platform/k$a;->d:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x6

    iget-object v5, p0, Lcom/roblox/platform/k$a;->d:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 102
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x7

    iget-object v5, p0, Lcom/roblox/platform/k$a;->e:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, v5}, Lcom/roblox/platform/k$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const/16 v2, 0x8

    iget-object v5, p0, Lcom/roblox/platform/k$a;->f:Ljava/lang/String;

    aput-object v5, v4, v2

    const/16 v2, 0x9

    iget-object v5, p0, Lcom/roblox/platform/k$a;->g:Ljava/lang/String;

    aput-object v5, v4, v2

    const/16 v2, 0xa

    iget-object v5, p0, Lcom/roblox/platform/k$a;->h:Ljava/lang/String;

    aput-object v5, v4, v2

    const/16 v2, 0xb

    aput-object v0, v4, v2

    const/16 v0, 0xc

    aput-object v1, v4, v0

    const-string v0, "Mozilla/5.0 (%dMB; %dx%d; %dx%d; %dx%d; %s; %s) %s (KHTML, like Gecko)  ROBLOX Android App %s %s Hybrid()  %s"

    .line 95
    invoke-static {v3, v0, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-boolean v1, p0, Lcom/roblox/platform/k$a;->l:Z

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ChromeOS"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public b(Landroid/graphics/Point;)Lcom/roblox/platform/k$a;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/roblox/platform/k$a;->c:Landroid/graphics/Point;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/roblox/platform/k$a;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/roblox/platform/k$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Z)Lcom/roblox/platform/k$a;
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/roblox/platform/k$a;->l:Z

    return-object p0
.end method

.method public c(Landroid/graphics/Point;)Lcom/roblox/platform/k$a;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/roblox/platform/k$a;->d:Landroid/graphics/Point;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/roblox/platform/k$a;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/roblox/platform/k$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/roblox/platform/k$a;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/roblox/platform/k$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/roblox/platform/k$a;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/roblox/platform/k$a;->i:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/roblox/platform/k$a;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/roblox/platform/k$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 133
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 134
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x1f

    if-le v3, v4, :cond_1

    const/16 v4, 0x7f

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 139
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    const/16 v3, 0x5f

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
