.class Lcom/roblox/client/components/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/components/e;->a(Lcom/roblox/client/components/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/components/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/components/e;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/roblox/client/components/e$1;->a:Lcom/roblox/client/components/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    .prologue
    .line 218
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/roblox/client/components/e$1;->a:Lcom/roblox/client/components/e;

    invoke-static {v1}, Lcom/roblox/client/components/e;->a(Lcom/roblox/client/components/e;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
