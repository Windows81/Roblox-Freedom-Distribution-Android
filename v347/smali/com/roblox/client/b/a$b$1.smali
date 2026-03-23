.class Lcom/roblox/client/b/a$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roblox/client/b/a$b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/roblox/client/b/a$b;


# direct methods
.method constructor <init>(Lcom/roblox/client/b/a$b;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/roblox/client/b/a$b$1;->b:Lcom/roblox/client/b/a$b;

    iput-object p2, p0, Lcom/roblox/client/b/a$b$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 162
    iget-object v0, p0, Lcom/roblox/client/b/a$b$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-static {}, Lcom/roblox/client/b;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-static {}, Lcom/roblox/client/b;->p()Ljava/lang/String;

    move-result-object v1

    .line 167
    :goto_1
    invoke-static {}, Lcom/roblox/client/b;->r()Z

    move-result v4

    .line 168
    const-string v5, "CrashReporter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uploadDumpFilesAsync: dumpPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dumpUrl = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->version()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v3, v1, v5, v4}, Lcom/roblox/engine/jni/NativeSettingsInterface;->nativeUploadBreakpadDump(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 172
    const-string v4, "CrashReporter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uploadDumpFilesAsync: ... UploadedOK = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", DeletedOK = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/roblox/client/util/g;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-static {}, Lcom/roblox/client/b/a$b;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    :cond_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->baseUrlUnsecure()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 176
    :cond_1
    return-void
.end method
