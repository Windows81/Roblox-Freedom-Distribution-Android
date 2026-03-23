.class Lcom/roblox/client/ActivityNativeMain$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/ActivityNativeMain;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/roblox/client/ActivityNativeMain;


# direct methods
.method constructor <init>(Lcom/roblox/client/ActivityNativeMain;)V
    .locals 0

    .line 1108
    iput-object p1, p0, Lcom/roblox/client/ActivityNativeMain$8;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/roblox/client/ActivityNativeMain$8;->a:Lcom/roblox/client/ActivityNativeMain;

    invoke-static {v0}, Lcom/roblox/client/ActivityNativeMain;->c(Lcom/roblox/client/ActivityNativeMain;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/roblox/client/x;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
