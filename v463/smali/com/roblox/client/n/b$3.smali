.class Lcom/roblox/client/n/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/roblox/client/locale/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/n/b;->onAppLocaleChangeEvent(Lcom/roblox/client/l/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/roblox/client/n/b;


# direct methods
.method constructor <init>(Lcom/roblox/client/n/b;Landroid/app/Activity;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/roblox/client/n/b$3;->b:Lcom/roblox/client/n/b;

    iput-object p2, p0, Lcom/roblox/client/n/b$3;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    const-string v0, "rbx.locale"

    const-string v1, "onAppLanguageChangeEvent(), Api call to get locale values"

    .line 372
    invoke-static {v0, v1}, Lcom/roblox/client/ae/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v0, p0, Lcom/roblox/client/n/b$3;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/roblox/client/n/b$3;->b:Lcom/roblox/client/n/b;

    invoke-static {v0}, Lcom/roblox/client/n/b;->a(Lcom/roblox/client/n/b;)V

    if-eqz p1, :cond_1

    .line 378
    iget-object p1, p0, Lcom/roblox/client/n/b$3;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    .line 379
    iget-object p1, p0, Lcom/roblox/client/n/b$3;->a:Landroid/app/Activity;

    instance-of v0, p1, Lcom/roblox/client/ActivityNativeMain;

    if-nez v0, :cond_1

    .line 381
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
