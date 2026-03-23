.class Lcom/roblox/client/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/e;


# direct methods
.method constructor <init>(Lcom/roblox/client/e;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/roblox/client/e$1;->a:Lcom/roblox/client/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/roblox/client/e$1;->a:Lcom/roblox/client/e;

    invoke-static {v0}, Lcom/roblox/client/e;->a(Lcom/roblox/client/e;)V

    .line 51
    return-void
.end method
