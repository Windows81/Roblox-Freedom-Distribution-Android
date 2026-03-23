.class Lcom/roblox/client/ActivityGlView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityGlView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ActivityGlView;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityGlView;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/roblox/client/ActivityGlView$1;->a:Lcom/roblox/client/ActivityGlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .prologue
    .line 183
    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/roblox/client/ActivityGlView$1;->a:Lcom/roblox/client/ActivityGlView;

    invoke-static {v0}, Lcom/roblox/client/ActivityGlView;->a(Lcom/roblox/client/ActivityGlView;)V

    .line 186
    :cond_0
    return-void
.end method
