.class public abstract Lcom/roblox/engine/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/engine/a/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field protected b:Lcom/roblox/engine/a/b;

.field protected c:Lcom/roblox/engine/a/a$a;

.field private d:Lcom/roblox/engine/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/roblox/engine/a/a;-><init>(Landroid/content/Context;Lcom/roblox/engine/a/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/roblox/engine/a/a$a;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/roblox/engine/e;

    invoke-direct {v0}, Lcom/roblox/engine/e;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/a/a;->d:Lcom/roblox/engine/e;

    .line 35
    iput-object p1, p0, Lcom/roblox/engine/a/a;->a:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/roblox/engine/a/a;->c:Lcom/roblox/engine/a/a$a;

    return-void
.end method

.method private a(IF)I
    .locals 2

    int-to-float p1, p1

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private a(IIIII)V
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doUpdateAppUISizes() vw:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tbh:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.glview.layout"

    invoke-static {v1, v0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p1, p2, p3, p4, p5}, Lcom/roblox/engine/jni/NativeGLInterface;->updateAppUISizes(IIIII)V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/roblox/engine/a/b;
.end method

.method protected a(Lcom/roblox/engine/a/b;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 56
    iget-object p2, p0, Lcom/roblox/engine/a/a;->b:Lcom/roblox/engine/a/b;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/roblox/engine/a/b;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 61
    :cond_1
    iput-object p1, p0, Lcom/roblox/engine/a/a;->b:Lcom/roblox/engine/a/b;

    .line 65
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/engine/a/a;->c()F

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    iget-object v0, p1, Lcom/roblox/engine/a/b;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v0, p2}, Lcom/roblox/engine/a/a;->a(IF)I

    move-result v0

    .line 73
    iget v1, p1, Lcom/roblox/engine/a/b;->f:I

    invoke-direct {p0, v1, p2}, Lcom/roblox/engine/a/a;->a(IF)I

    move-result v4

    .line 75
    iget v1, p1, Lcom/roblox/engine/a/b;->e:I

    if-lez v1, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 77
    iget v1, p1, Lcom/roblox/engine/a/b;->e:I

    invoke-direct {p0, v1, p2}, Lcom/roblox/engine/a/a;->a(IF)I

    move-result v6

    move-object v1, p0

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/roblox/engine/a/a;->a(ZIIII)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v5, v0

    .line 79
    invoke-virtual/range {v1 .. v6}, Lcom/roblox/engine/a/a;->a(ZIIII)V

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/roblox/engine/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 87
    :cond_3
    iget v1, p1, Lcom/roblox/engine/a/b;->c:I

    invoke-direct {p0, v1, p2}, Lcom/roblox/engine/a/a;->a(IF)I

    move-result v5

    .line 89
    iget v1, p1, Lcom/roblox/engine/a/b;->g:I

    invoke-direct {p0, v1, p2}, Lcom/roblox/engine/a/a;->a(IF)I

    move-result v3

    .line 91
    iget p1, p1, Lcom/roblox/engine/a/b;->d:I

    invoke-direct {p0, p1, p2}, Lcom/roblox/engine/a/a;->a(IF)I

    move-result v6

    .line 93
    iget-object p1, p0, Lcom/roblox/engine/a/a;->c:Lcom/roblox/engine/a/a$a;

    if-eqz p1, :cond_4

    iget p1, p1, Lcom/roblox/engine/a/a$a;->a:I

    move v4, p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    const/4 v4, 0x0

    :goto_1
    move-object v1, p0

    move v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/roblox/engine/a/a;->a(IIIII)V

    return-void

    :catch_0
    move-exception p1

    .line 67
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onGlobalLayout() exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "rbx.glview.layout"

    invoke-static {p2, p1}, Lcom/roblox/platform/e;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/roblox/engine/a/a;->a()Lcom/roblox/engine/a/b;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/roblox/engine/a/a;->a(Lcom/roblox/engine/a/b;Z)V

    return-void
.end method

.method protected a(ZIIII)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateKeyboardSize() v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rbx.glview.layout"

    invoke-static {v1, v0}, Lcom/roblox/platform/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {p1, p2, p3, p4, p5}, Lcom/roblox/engine/jni/NativeGLInterface;->updateKeyboardSize(ZIIII)V

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()F
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/roblox/engine/a/a;->d:Lcom/roblox/engine/e;

    iget-object v1, p0, Lcom/roblox/engine/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/engine/e;->a(Landroid/content/Context;)F

    move-result v0

    return v0
.end method
