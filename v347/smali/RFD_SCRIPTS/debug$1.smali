.class Ldebug$1;
.super Ljava/lang/Object;
.implements Ljava/lang/Runnable;

.field private final val$message:Ljava/lang/String;

.method public <init>(Ljava/lang/String;)V
    .registers 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p2, p0, Ldebug$1;->val$message:Ljava/lang/String;
    return-void
.end method

.method public run()V
    .registers 3
    return-void
.end method