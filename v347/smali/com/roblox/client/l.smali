.class public abstract Lcom/roblox/client/l;
.super Landroid/support/v7/app/c;
.source "SourceFile"


# static fields
.field protected static n:I


# instance fields
.field private m:Z

.field protected o:Lcom/roblox/client/purchase/google/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput v0, Lcom/roblox/client/l;->n:I

    .line 39
    const-string v0, "fmod"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    const-string v0, "roblox"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    const-string v0, "shell-lib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v7/app/c;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/l;->o:Lcom/roblox/client/purchase/google/b;

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/roblox/client/l;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v0, Landroid/support/v7/app/b$a;

    invoke-direct {v0, p0}, Landroid/support/v7/app/b$a;-><init>(Landroid/content/Context;)V

    .line 208
    const v1, 0x7f0e00ed

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/b$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/b$a;

    .line 209
    invoke-virtual {v0, p1}, Landroid/support/v7/app/b$a;->b(Ljava/lang/CharSequence;)Landroid/support/v7/app/b$a;

    .line 210
    if-eqz p2, :cond_1

    .line 211
    invoke-virtual {v0, p2}, Landroid/support/v7/app/b$a;->a(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/b$a;

    .line 213
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/app/b$a;->b()Landroid/support/v7/app/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/b;->show()V

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .prologue
    .line 217
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 218
    return-void
.end method

.method public a(ILandroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/roblox/client/l;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/roblox/client/l;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 183
    return-void
.end method

.method public varargs a(I[Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/roblox/client/l;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0, p1}, Lcom/roblox/client/l;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 193
    :try_start_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 199
    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/l;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    const-string v1, "RobloxBaseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad format: format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". args="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/roblox/client/util/g;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const v0, 0x7f0e012f

    invoke-virtual {p0, v0}, Lcom/roblox/client/l;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public c(I)V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lcom/roblox/client/l;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/roblox/client/l;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 179
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/roblox/client/l;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 175
    return-void
.end method

.method public isDestroyed()Z
    .locals 2

    .prologue
    .line 227
    sget-object v0, Landroid/arch/lifecycle/d$b;->a:Landroid/arch/lifecycle/d$b;

    invoke-virtual {p0}, Lcom/roblox/client/l;->getLifecycle()Landroid/arch/lifecycle/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/arch/lifecycle/d;->a()Landroid/arch/lifecycle/d$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 50
    invoke-static {p0}, Lcom/roblox/client/RobloxSettings;->updateDeviceType(Landroid/content/Context;)V

    .line 52
    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-static {p0}, Lcom/roblox/client/http/b;->a(Landroid/content/Context;)V

    .line 56
    sget v0, Lcom/roblox/client/l;->n:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/roblox/client/l;->n:I

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/roblox/client/jni/b;

    invoke-direct {v0, p0}, Lcom/roblox/client/jni/b;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/roblox/engine/jni/SessionReporterJavaInterface;->setImplementation(Lcom/roblox/engine/jni/SessionReporterJavaInterface$a;)V

    .line 58
    invoke-static {}, Lcom/roblox/client/m/a;->a()V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/roblox/client/ActivityGlView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    const-string v0, "SessionReporterState_ApplicationStart"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/roblox/client/m/a;->a(Ljava/lang/String;J)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v7/app/c;->onDestroy()V

    .line 73
    sget v0, Lcom/roblox/client/l;->n:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/roblox/client/l;->n:I

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/roblox/client/ActivityGlView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const-string v0, "SessionReporterState_ApplicationTerminate"

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/roblox/client/m/a;->a(Ljava/lang/String;J)V

    .line 80
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/roblox/client/l;->setIntent(Landroid/content/Intent;)V

    .line 126
    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onNewIntent(Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/roblox/client/l;->m:Z

    .line 105
    sget-object v0, Lcom/roblox/client/RobloxSettings;->mKeyValues:Landroid/content/SharedPreferences;

    const-string v1, "webview_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-virtual {p0}, Lcom/roblox/client/l;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/roblox/client/http/b;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/roblox/client/l;->setIntent(Landroid/content/Intent;)V

    .line 114
    invoke-super {p0}, Landroid/support/v7/app/c;->onPause()V

    .line 115
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/support/v7/app/c;->onResume()V

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/roblox/client/l;->m:Z

    .line 136
    invoke-static {}, Lcom/roblox/client/http/b;->a()V

    .line 137
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/support/v7/app/c;->onStart()V

    .line 88
    invoke-static {p0}, Lcom/roblox/client/purchase/google/b;->a(Landroid/content/Context;)Lcom/roblox/client/purchase/google/b;

    move-result-object v0

    iput-object v0, p0, Lcom/roblox/client/l;->o:Lcom/roblox/client/purchase/google/b;

    .line 90
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 95
    invoke-static {}, Lcom/roblox/client/http/b;->b()V

    .line 97
    invoke-super {p0}, Landroid/support/v7/app/c;->onStop()V

    .line 98
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Landroid/support/v7/app/c;->onTrimMemory(I)V

    .line 144
    const-string v0, "RobloxBaseActivity"

    invoke-static {v0, p1}, Lcom/roblox/client/RobloxApplication;->a(Ljava/lang/String;I)V

    .line 145
    return-void
.end method

.method protected s()V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isChrome()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-static {}, Lcom/roblox/client/RobloxSettings;->isPhone()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    :goto_1
    invoke-virtual {p0, v0}, Lcom/roblox/client/l;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    goto :goto_1
.end method

.method public t()Lcom/roblox/client/purchase/google/b;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/roblox/client/l;->o:Lcom/roblox/client/purchase/google/b;

    return-object v0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/roblox/client/l;->m:Z

    return v0
.end method
