.class public Lcom/roblox/client/purchase/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/purchase/b$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Lcom/roblox/client/purchase/a;

.field private e:Landroid/os/Handler;

.field private f:Lcom/roblox/client/game/m;


# direct methods
.method public constructor <init>(Lcom/roblox/client/purchase/a;Z)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 31
    iput-wide v0, p0, Lcom/roblox/client/purchase/b;->a:J

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/roblox/client/purchase/b;->b:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/roblox/client/purchase/b$a;

    invoke-direct {v0, p0}, Lcom/roblox/client/purchase/b$a;-><init>(Lcom/roblox/client/purchase/b;)V

    iput-object v0, p0, Lcom/roblox/client/purchase/b;->f:Lcom/roblox/client/game/m;

    .line 90
    iput-object p1, p0, Lcom/roblox/client/purchase/b;->d:Lcom/roblox/client/purchase/a;

    .line 91
    iput-boolean p2, p0, Lcom/roblox/client/purchase/b;->c:Z

    .line 93
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/roblox/client/purchase/b;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/purchase/b;)Lcom/roblox/client/purchase/a;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/roblox/client/purchase/b;->d:Lcom/roblox/client/purchase/a;

    return-object p0
.end method

.method static synthetic a(Lcom/roblox/client/purchase/b;ZJLjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/roblox/client/purchase/b;->a(ZJLjava/lang/String;)V

    return-void
.end method

.method private a(ZJLjava/lang/String;)V
    .locals 8

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In-App purchase finished: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", player="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", productId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "rbx.purchaseflow"

    invoke-static {v3, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-wide v4, p0, Lcom/roblox/client/purchase/b;->a:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    const-string p1, "AppShellFragment.inAppPurchaseFinished: playerPtr == 0."

    .line 173
    invoke-static {v3, p1}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Native call. Success="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/roblox/client/ae/k;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static {p1, p2, p3, p4}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeInGamePurchaseFinished(ZJLjava/lang/String;)V

    const-string p1, ""

    .line 181
    iput-object p1, p0, Lcom/roblox/client/purchase/b;->b:Ljava/lang/String;

    .line 182
    iput-wide v6, p0, Lcom/roblox/client/purchase/b;->a:J

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/roblox/client/purchase/b;->d:Lcom/roblox/client/purchase/a;

    invoke-interface {v0}, Lcom/roblox/client/purchase/a;->aq()Lcom/roblox/client/r;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/roblox/client/r;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 105
    iput-wide p1, p0, Lcom/roblox/client/purchase/b;->a:J

    .line 106
    iput-object p3, p0, Lcom/roblox/client/purchase/b;->b:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/roblox/client/purchase/b;->d:Lcom/roblox/client/purchase/a;

    invoke-interface {v0}, Lcom/roblox/client/purchase/a;->aq()Lcom/roblox/client/r;

    move-result-object v4

    .line 118
    invoke-static {v4}, Lcom/roblox/client/purchase/google/b;->a(Landroid/content/Context;)Lcom/roblox/client/purchase/google/b;

    move-result-object v1

    iget-object v7, p0, Lcom/roblox/client/purchase/b;->f:Lcom/roblox/client/game/m;

    move-object v2, p4

    move-object v3, p3

    move-wide v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/roblox/client/purchase/google/b;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;JLcom/roblox/client/purchase/e;)Z

    move-result p4

    const-string v0, "InApp"

    const-string v1, "InGame"

    const-string v2, "GoogleStoreInitiate"

    if-nez p4, :cond_1

    .line 120
    new-instance p4, Lcom/roblox/client/purchase/b$1;

    invoke-direct {p4, p0}, Lcom/roblox/client/purchase/b$1;-><init>(Lcom/roblox/client/purchase/b;)V

    invoke-virtual {p0, p4}, Lcom/roblox/client/purchase/b;->a(Ljava/lang/Runnable;)V

    const/4 p4, 0x0

    .line 125
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/roblox/client/purchase/b;->a(ZJLjava/lang/String;)V

    .line 127
    iget-boolean p1, p0, Lcom/roblox/client/purchase/b;->c:Z

    const-string p2, "FailedPlayStoreNotSetUp"

    if-eqz p1, :cond_0

    .line 128
    invoke-static {v2, v0, p2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {v2, v1, p2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_1
    iget-boolean p1, p0, Lcom/roblox/client/purchase/b;->c:Z

    const-string p2, "Started"

    if-eqz p1, :cond_2

    .line 134
    invoke-static {v2, v0, p2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {v2, v1, p2}, Lcom/roblox/client/analytics/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 12

    .line 143
    iget-object v0, p0, Lcom/roblox/client/purchase/b;->d:Lcom/roblox/client/purchase/a;

    invoke-interface {v0}, Lcom/roblox/client/purchase/a;->aq()Lcom/roblox/client/r;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Landroidx/appcompat/app/b$a;

    iget-object v1, p0, Lcom/roblox/client/purchase/b;->d:Lcom/roblox/client/purchase/a;

    invoke-interface {v1}, Lcom/roblox/client/purchase/a;->aq()Lcom/roblox/client/r;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/b$a;->b()Landroidx/appcompat/app/b;

    move-result-object v0

    .line 149
    new-instance v3, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/roblox/client/purchase/b;->d:Lcom/roblox/client/purchase/a;

    invoke-interface {v1}, Lcom/roblox/client/purchase/a;->aq()Lcom/roblox/client/r;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 150
    iget-object v1, p0, Lcom/roblox/client/purchase/b;->d:Lcom/roblox/client/purchase/a;

    invoke-interface {v1}, Lcom/roblox/client/purchase/a;->aq()Lcom/roblox/client/r;

    move-result-object v1

    sget v2, Lcom/roblox/client/o$j;->CommonUI_Messages_Response_RobloxSupport:I

    invoke-virtual {v1, v2}, Lcom/roblox/client/r;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 151
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 152
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    add-int v9, v8, v1

    .line 153
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/roblox/client/ae/a/a;

    const/4 v10, 0x0

    new-instance v11, Lcom/roblox/client/ae/a/c;

    iget-object v4, p0, Lcom/roblox/client/purchase/b;->d:Lcom/roblox/client/purchase/a;

    invoke-interface {v4}, Lcom/roblox/client/purchase/a;->aq()Lcom/roblox/client/r;

    move-result-object v5

    const/4 v6, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v9}, Lcom/roblox/client/ae/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v11, v2, v10

    invoke-static {v3, p1, v2}, Lcom/roblox/client/ae/a/b;->a(Landroid/widget/TextView;Ljava/lang/String;[Lcom/roblox/client/ae/a/a;)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 155
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 p1, 0x0

    .line 156
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x96

    const/16 v5, 0x64

    const/16 v6, 0x96

    const/16 v7, 0x64

    move-object v2, v0

    .line 158
    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/app/b;->a(Landroid/view/View;IIII)V

    .line 159
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/b;->setCanceledOnTouchOutside(Z)V

    .line 161
    :try_start_0
    invoke-virtual {v0}, Landroidx/appcompat/app/b;->show()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/roblox/client/purchase/b;->e:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
