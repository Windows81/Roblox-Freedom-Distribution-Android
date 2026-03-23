.class public abstract Lcom/roblox/engine/components/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/engine/components/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field protected b:Lcom/roblox/engine/components/b;

.field protected c:Lcom/roblox/engine/components/a$a;

.field protected d:Lcom/roblox/engine/components/a$a;

.field private e:Lcom/roblox/engine/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/roblox/engine/components/a$a;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/roblox/engine/components/a;->c:Lcom/roblox/engine/components/a$a;

    .line 28
    iput-object v0, p0, Lcom/roblox/engine/components/a;->d:Lcom/roblox/engine/components/a$a;

    .line 30
    new-instance v0, Lcom/roblox/engine/e;

    invoke-direct {v0}, Lcom/roblox/engine/e;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/components/a;->e:Lcom/roblox/engine/e;

    .line 33
    iput-object p1, p0, Lcom/roblox/engine/components/a;->a:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/roblox/engine/components/a;->d:Lcom/roblox/engine/components/a$a;

    .line 35
    return-void
.end method

.method private a(IF)I
    .locals 1

    .prologue
    .line 96
    int-to-float v0, p1

    div-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method private a(IIIII)V
    .locals 3

    .prologue
    .line 103
    const-string v0, "rbx.glview.layout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUpdateAppUISizes() vw:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sbh:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tbh:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " twh:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/platform/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    add-int v0, p4, p5

    invoke-static {p1, p2, p3, v0}, Lcom/roblox/engine/jni/NativeGLInterface;->updateAppUISizes(IIII)V

    .line 112
    return-void
.end method


# virtual methods
.method public abstract a()Lcom/roblox/engine/components/b;
.end method

.method protected a(Lcom/roblox/engine/components/b;Z)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 45
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/roblox/engine/components/a;->b:Lcom/roblox/engine/components/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/roblox/engine/components/a;->b:Lcom/roblox/engine/components/b;

    invoke-virtual {v0, p1}, Lcom/roblox/engine/components/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/roblox/engine/components/a;->b:Lcom/roblox/engine/components/b;

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lcom/roblox/engine/components/a;->b()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 61
    iget-object v0, p0, Lcom/roblox/engine/components/a;->c:Lcom/roblox/engine/components/a$a;

    if-nez v0, :cond_1

    .line 62
    new-instance v0, Lcom/roblox/engine/components/a$a;

    invoke-direct {v0}, Lcom/roblox/engine/components/a$a;-><init>()V

    iput-object v0, p0, Lcom/roblox/engine/components/a;->c:Lcom/roblox/engine/components/a$a;

    .line 63
    iget-object v0, p0, Lcom/roblox/engine/components/a;->c:Lcom/roblox/engine/components/a$a;

    iget-object v1, p0, Lcom/roblox/engine/components/a;->d:Lcom/roblox/engine/components/a$a;

    iget v1, v1, Lcom/roblox/engine/components/a$a;->a:I

    invoke-direct {p0, v1, v6}, Lcom/roblox/engine/components/a;->a(IF)I

    move-result v1

    iput v1, v0, Lcom/roblox/engine/components/a$a;->a:I

    .line 64
    iget-object v0, p0, Lcom/roblox/engine/components/a;->c:Lcom/roblox/engine/components/a$a;

    iget-object v1, p0, Lcom/roblox/engine/components/a;->d:Lcom/roblox/engine/components/a$a;

    iget v1, v1, Lcom/roblox/engine/components/a$a;->b:I

    invoke-direct {p0, v1, v6}, Lcom/roblox/engine/components/a;->a(IF)I

    move-result v1

    iput v1, v0, Lcom/roblox/engine/components/a$a;->b:I

    .line 67
    :cond_1
    iget-object v0, p1, Lcom/roblox/engine/components/b;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-direct {p0, v0, v6}, Lcom/roblox/engine/components/a;->a(IF)I

    move-result v4

    .line 69
    iget-object v0, p1, Lcom/roblox/engine/components/b;->a:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v6}, Lcom/roblox/engine/components/a;->a(IF)I

    move-result v3

    .line 71
    iget v0, p1, Lcom/roblox/engine/components/b;->d:I

    if-lez v0, :cond_2

    .line 73
    const/4 v1, 0x1

    iget v0, p1, Lcom/roblox/engine/components/b;->d:I

    invoke-direct {p0, v0, v6}, Lcom/roblox/engine/components/a;->a(IF)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/roblox/engine/components/a;->a(ZIIII)V

    .line 78
    :goto_1
    iget-boolean v0, p1, Lcom/roblox/engine/components/b;->e:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/roblox/engine/components/a;->c:Lcom/roblox/engine/components/a$a;

    iget v8, v0, Lcom/roblox/engine/components/a$a;->b:I

    .line 80
    :goto_2
    iget v0, p1, Lcom/roblox/engine/components/b;->c:I

    invoke-direct {p0, v0, v6}, Lcom/roblox/engine/components/a;->a(IF)I

    move-result v7

    .line 82
    iget v0, p1, Lcom/roblox/engine/components/b;->f:I

    invoke-direct {p0, v0, v6}, Lcom/roblox/engine/components/a;->a(IF)I

    move-result v5

    .line 84
    iget-object v0, p0, Lcom/roblox/engine/components/a;->c:Lcom/roblox/engine/components/a$a;

    iget v6, v0, Lcom/roblox/engine/components/a$a;->a:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/roblox/engine/components/a;->a(IIIII)V

    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "rbx.glview.layout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGlobalLayout() exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/platform/d;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    move-object v0, p0

    move v1, v2

    move v5, v2

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/roblox/engine/components/a;->a(ZIIII)V

    goto :goto_1

    :cond_3
    move v8, v2

    .line 78
    goto :goto_2
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/roblox/engine/components/a;->a()Lcom/roblox/engine/components/b;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/roblox/engine/components/a;->a(Lcom/roblox/engine/components/b;Z)V

    .line 41
    return-void
.end method

.method protected a(ZIIII)V
    .locals 3

    .prologue
    .line 115
    const-string v0, "rbx.glview.layout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdateKeyboardSize() v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " w:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " h:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/platform/d;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-static {p1, p2, p3, p4, p5}, Lcom/roblox/engine/jni/NativeGLInterface;->updateKeyboardSize(ZIIII)V

    .line 117
    return-void
.end method

.method public b()F
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/roblox/engine/components/a;->e:Lcom/roblox/engine/e;

    iget-object v1, p0, Lcom/roblox/engine/components/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/roblox/engine/e;->a(Landroid/content/Context;)F

    move-result v0

    return v0
.end method
