.class Lcom/roblox/client/jni/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/jni/a;->b(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/roblox/client/jni/a;


# direct methods
.method constructor <init>(Lcom/roblox/client/jni/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/roblox/client/jni/a$6;->c:Lcom/roblox/client/jni/a;

    iput-object p2, p0, Lcom/roblox/client/jni/a$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/roblox/client/jni/a$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 235
    invoke-static {}, Lcom/roblox/client/jni/a;->i()Lcom/roblox/client/FragmentGlView;

    move-result-object v0

    iget-object v1, p0, Lcom/roblox/client/jni/a$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/roblox/client/jni/a$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/roblox/client/FragmentGlView;->onDataModelNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method
