.class public final Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMainSchedulerFactory;
.super Ljava/lang/Object;
.source "BaseMarketingModule_ProvideMainSchedulerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lrx/Scheduler;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-class v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMainSchedulerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMainSchedulerFactory;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)V
    .registers 3
    .param p1, "module"    # Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-boolean v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMainSchedulerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_f
    iput-object p1, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMainSchedulerFactory;->module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    .line 14
    return-void
.end method

.method public static create(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)Ldagger/internal/Factory;
    .registers 2
    .param p0, "module"    # Lcom/upsight/android/marketing/internal/BaseMarketingModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/marketing/internal/BaseMarketingModule;",
            ")",
            "Ldagger/internal/Factory",
            "<",
            "Lrx/Scheduler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMainSchedulerFactory;

    invoke-direct {v0, p0}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMainSchedulerFactory;-><init>(Lcom/upsight/android/marketing/internal/BaseMarketingModule;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMainSchedulerFactory;->get()Lrx/Scheduler;

    move-result-object v0

    return-object v0
.end method

.method public get()Lrx/Scheduler;
    .registers 4

    .prologue
    .line 18
    iget-object v1, p0, Lcom/upsight/android/marketing/internal/BaseMarketingModule_ProvideMainSchedulerFactory;->module:Lcom/upsight/android/marketing/internal/BaseMarketingModule;

    invoke-virtual {v1}, Lcom/upsight/android/marketing/internal/BaseMarketingModule;->provideMainScheduler()Lrx/Scheduler;

    move-result-object v0

    .line 19
    .local v0, "provided":Lrx/Scheduler;
    if-nez v0, :cond_10

    .line 20
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_10
    return-object v0
.end method
